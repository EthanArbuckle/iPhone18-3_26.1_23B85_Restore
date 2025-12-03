@interface ANPlaybackCommand
+ (ANPlaybackCommand)nextCommand;
+ (ANPlaybackCommand)previousCommand;
+ (ANPlaybackCommand)stopCommand;
+ (id)playCommandWithOptions:(unint64_t)options announcementIdentifiers:(id)identifiers;
- (ANPlaybackCommand)initWithCoder:(id)coder;
- (ANPlaybackCommand)initWithPlaybackOperation:(unint64_t)operation options:(unint64_t)options announcementIdentifiers:(id)identifiers;
- (ANPlaybackCommand)initWithPlaybackOperation:(unint64_t)operation options:(unint64_t)options forRecipient:(id)recipient;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANPlaybackCommand

- (ANPlaybackCommand)initWithPlaybackOperation:(unint64_t)operation options:(unint64_t)options announcementIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v13.receiver = self;
  v13.super_class = ANPlaybackCommand;
  v10 = [(ANPlaybackCommand *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_operation = operation;
    v10->_options = options;
    objc_storeStrong(&v10->_announcementIdentifiers, identifiers);
  }

  return v11;
}

- (ANPlaybackCommand)initWithPlaybackOperation:(unint64_t)operation options:(unint64_t)options forRecipient:(id)recipient
{
  v8.receiver = self;
  v8.super_class = ANPlaybackCommand;
  result = [(ANPlaybackCommand *)&v8 init:operation];
  if (result)
  {
    result->_operation = operation;
    result->_options = options;
  }

  return result;
}

- (id)description
{
  operation = [(ANPlaybackCommand *)self operation];
  if (operation > 1)
  {
    if (operation != 2)
    {
      if (operation == 3)
      {
        v4 = @"Previous";
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v4 = @"Next";
  }

  else
  {
    if (operation)
    {
      if (operation == 1)
      {
        v4 = @"Stop";
        goto LABEL_11;
      }

LABEL_8:
      v4 = @"Unknown";
      goto LABEL_11;
    }

    v5 = MEMORY[0x277CCACA8];
    options = [(ANPlaybackCommand *)self options];
    announcementIdentifiers = [(ANPlaybackCommand *)self announcementIdentifiers];
    v8 = [announcementIdentifiers count];
    announcementIdentifiers2 = [(ANPlaybackCommand *)self announcementIdentifiers];
    v4 = [v5 stringWithFormat:@"Play [options = %lu, count = %lu, %@]", options, v8, announcementIdentifiers2];
  }

LABEL_11:

  return v4;
}

+ (id)playCommandWithOptions:(unint64_t)options announcementIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v6 = [[ANPlaybackCommand alloc] initWithPlaybackOperation:0 options:options announcementIdentifiers:identifiersCopy];

  return v6;
}

+ (ANPlaybackCommand)stopCommand
{
  v2 = [ANPlaybackCommand alloc];
  v3 = [(ANPlaybackCommand *)v2 initWithPlaybackOperation:1 options:0 announcementIdentifiers:MEMORY[0x277CBEBF8]];

  return v3;
}

+ (ANPlaybackCommand)nextCommand
{
  v2 = [ANPlaybackCommand alloc];
  v3 = [(ANPlaybackCommand *)v2 initWithPlaybackOperation:2 options:0 announcementIdentifiers:MEMORY[0x277CBEBF8]];

  return v3;
}

+ (ANPlaybackCommand)previousCommand
{
  v2 = [ANPlaybackCommand alloc];
  v3 = [(ANPlaybackCommand *)v2 initWithPlaybackOperation:3 options:0 announcementIdentifiers:MEMORY[0x277CBEBF8]];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  operation = self->_operation;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInteger:operation];
  [coderCopy encodeObject:v6 forKey:@"Command"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_options];
  [coderCopy encodeObject:v7 forKey:@"Options"];

  [coderCopy encodeObject:self->_announcementIdentifiers forKey:@"AnnouncementIdentifiers"];
}

- (ANPlaybackCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = ANPlaybackCommand;
  v5 = [(ANPlaybackCommand *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Command"];
    v5->_operation = [v6 unsignedIntegerValue];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Options"];
    v5->_options = [v7 unsignedIntegerValue];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"AnnouncementIdentifiers"];
    announcementIdentifiers = v5->_announcementIdentifiers;
    v5->_announcementIdentifiers = v11;
  }

  return v5;
}

@end