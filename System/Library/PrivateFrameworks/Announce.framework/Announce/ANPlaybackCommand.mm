@interface ANPlaybackCommand
+ (ANPlaybackCommand)nextCommand;
+ (ANPlaybackCommand)previousCommand;
+ (ANPlaybackCommand)stopCommand;
+ (id)playCommandWithOptions:(unint64_t)a3 announcementIdentifiers:(id)a4;
- (ANPlaybackCommand)initWithCoder:(id)a3;
- (ANPlaybackCommand)initWithPlaybackOperation:(unint64_t)a3 options:(unint64_t)a4 announcementIdentifiers:(id)a5;
- (ANPlaybackCommand)initWithPlaybackOperation:(unint64_t)a3 options:(unint64_t)a4 forRecipient:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANPlaybackCommand

- (ANPlaybackCommand)initWithPlaybackOperation:(unint64_t)a3 options:(unint64_t)a4 announcementIdentifiers:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = ANPlaybackCommand;
  v10 = [(ANPlaybackCommand *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_operation = a3;
    v10->_options = a4;
    objc_storeStrong(&v10->_announcementIdentifiers, a5);
  }

  return v11;
}

- (ANPlaybackCommand)initWithPlaybackOperation:(unint64_t)a3 options:(unint64_t)a4 forRecipient:(id)a5
{
  v8.receiver = self;
  v8.super_class = ANPlaybackCommand;
  result = [(ANPlaybackCommand *)&v8 init:a3];
  if (result)
  {
    result->_operation = a3;
    result->_options = a4;
  }

  return result;
}

- (id)description
{
  v3 = [(ANPlaybackCommand *)self operation];
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 == 3)
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
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = @"Stop";
        goto LABEL_11;
      }

LABEL_8:
      v4 = @"Unknown";
      goto LABEL_11;
    }

    v5 = MEMORY[0x277CCACA8];
    v6 = [(ANPlaybackCommand *)self options];
    v7 = [(ANPlaybackCommand *)self announcementIdentifiers];
    v8 = [v7 count];
    v9 = [(ANPlaybackCommand *)self announcementIdentifiers];
    v4 = [v5 stringWithFormat:@"Play [options = %lu, count = %lu, %@]", v6, v8, v9];
  }

LABEL_11:

  return v4;
}

+ (id)playCommandWithOptions:(unint64_t)a3 announcementIdentifiers:(id)a4
{
  v5 = a4;
  v6 = [[ANPlaybackCommand alloc] initWithPlaybackOperation:0 options:a3 announcementIdentifiers:v5];

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

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  operation = self->_operation;
  v8 = a3;
  v6 = [v4 numberWithUnsignedInteger:operation];
  [v8 encodeObject:v6 forKey:@"Command"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_options];
  [v8 encodeObject:v7 forKey:@"Options"];

  [v8 encodeObject:self->_announcementIdentifiers forKey:@"AnnouncementIdentifiers"];
}

- (ANPlaybackCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ANPlaybackCommand;
  v5 = [(ANPlaybackCommand *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Command"];
    v5->_operation = [v6 unsignedIntegerValue];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Options"];
    v5->_options = [v7 unsignedIntegerValue];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"AnnouncementIdentifiers"];
    announcementIdentifiers = v5->_announcementIdentifiers;
    v5->_announcementIdentifiers = v11;
  }

  return v5;
}

@end