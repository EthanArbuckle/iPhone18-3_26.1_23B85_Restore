@interface ATXTimeSectionRow
- (ATXTimeSectionRow)initWithCoder:(id)coder;
- (ATXTimeSectionRow)initWithEvents:(id)events accessories:(id)accessories dateComponents:(id)components isCurrent:(BOOL)current prominence:(int64_t)prominence identifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXTimeSectionRow

- (ATXTimeSectionRow)initWithEvents:(id)events accessories:(id)accessories dateComponents:(id)components isCurrent:(BOOL)current prominence:(int64_t)prominence identifier:(id)identifier
{
  eventsCopy = events;
  accessoriesCopy = accessories;
  componentsCopy = components;
  identifierCopy = identifier;
  if (eventsCopy)
  {
    if (accessoriesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [ATXTimeSectionRow initWithEvents:a2 accessories:self dateComponents:? isCurrent:? prominence:? identifier:?];
    if (accessoriesCopy)
    {
      goto LABEL_3;
    }
  }

  [ATXTimeSectionRow initWithEvents:a2 accessories:self dateComponents:? isCurrent:? prominence:? identifier:?];
LABEL_3:
  v30.receiver = self;
  v30.super_class = ATXTimeSectionRow;
  v19 = [(ATXTimeSectionRow *)&v30 init];
  if (v19)
  {
    v20 = [eventsCopy copy];
    events = v19->_events;
    v19->_events = v20;

    v22 = [accessoriesCopy copy];
    accessories = v19->_accessories;
    v19->_accessories = v22;

    v24 = [componentsCopy copy];
    dateComponents = v19->_dateComponents;
    v19->_dateComponents = v24;

    v19->_isCurrent = current;
    v19->_prominence = prominence;
    v26 = [identifierCopy copy];
    identifier = v19->_identifier;
    v19->_identifier = v26;

    v28 = v19;
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  events = self->_events;
  coderCopy = coder;
  [coderCopy encodeObject:events forKey:@"events"];
  [coderCopy encodeObject:self->_accessories forKey:@"accessories"];
  [coderCopy encodeObject:self->_dateComponents forKey:@"dateComponents"];
  [coderCopy encodeBool:self->_isCurrent forKey:@"isCurrent"];
  [coderCopy encodeInteger:self->_prominence forKey:@"prominence"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
}

- (ATXTimeSectionRow)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"events"];
  v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"accessories"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateComponents"];
  v8 = [coderCopy decodeBoolForKey:@"isCurrent"];
  v9 = [coderCopy decodeIntegerForKey:@"prominence"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v11 = [(ATXTimeSectionRow *)self initWithEvents:v5 accessories:v6 dateComponents:v7 isCurrent:v8 prominence:v9 identifier:v10];
  return v11;
}

- (void)initWithEvents:(uint64_t)a1 accessories:(uint64_t)a2 dateComponents:isCurrent:prominence:identifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXTimeSectionRow.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"events"}];
}

- (void)initWithEvents:(uint64_t)a1 accessories:(uint64_t)a2 dateComponents:isCurrent:prominence:identifier:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXTimeSectionRow.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"accessories"}];
}

@end