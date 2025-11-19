@interface ATXTimeSectionRow
- (ATXTimeSectionRow)initWithCoder:(id)a3;
- (ATXTimeSectionRow)initWithEvents:(id)a3 accessories:(id)a4 dateComponents:(id)a5 isCurrent:(BOOL)a6 prominence:(int64_t)a7 identifier:(id)a8;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXTimeSectionRow

- (ATXTimeSectionRow)initWithEvents:(id)a3 accessories:(id)a4 dateComponents:(id)a5 isCurrent:(BOOL)a6 prominence:(int64_t)a7 identifier:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [ATXTimeSectionRow initWithEvents:a2 accessories:self dateComponents:? isCurrent:? prominence:? identifier:?];
    if (v16)
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
    v20 = [v15 copy];
    events = v19->_events;
    v19->_events = v20;

    v22 = [v16 copy];
    accessories = v19->_accessories;
    v19->_accessories = v22;

    v24 = [v17 copy];
    dateComponents = v19->_dateComponents;
    v19->_dateComponents = v24;

    v19->_isCurrent = a6;
    v19->_prominence = a7;
    v26 = [v18 copy];
    identifier = v19->_identifier;
    v19->_identifier = v26;

    v28 = v19;
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  events = self->_events;
  v5 = a3;
  [v5 encodeObject:events forKey:@"events"];
  [v5 encodeObject:self->_accessories forKey:@"accessories"];
  [v5 encodeObject:self->_dateComponents forKey:@"dateComponents"];
  [v5 encodeBool:self->_isCurrent forKey:@"isCurrent"];
  [v5 encodeInteger:self->_prominence forKey:@"prominence"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
}

- (ATXTimeSectionRow)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"events"];
  v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"accessories"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateComponents"];
  v8 = [v4 decodeBoolForKey:@"isCurrent"];
  v9 = [v4 decodeIntegerForKey:@"prominence"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

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