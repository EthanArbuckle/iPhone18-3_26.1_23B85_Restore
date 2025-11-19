@interface ATXTimeMarble
- (ATXTimeMarble)initWithCoder:(id)a3;
- (ATXTimeMarble)initWithSymbolName:(id)a3 colorName:(id)a4 dateComponents:(id)a5 title:(id)a6;
- (NSDate)date;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXTimeMarble

- (ATXTimeMarble)initWithSymbolName:(id)a3 colorName:(id)a4 dateComponents:(id)a5 title:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25.receiver = self;
  v25.super_class = ATXTimeMarble;
  v14 = [(ATXTimeMarble *)&v25 init];
  if (v14)
  {
    v15 = [v10 copy];
    symbolName = v14->_symbolName;
    v14->_symbolName = v15;

    v17 = [v11 copy];
    colorName = v14->_colorName;
    v14->_colorName = v17;

    v19 = [v12 copy];
    dateComponents = v14->_dateComponents;
    v14->_dateComponents = v19;

    v21 = [v13 copy];
    title = v14->_title;
    v14->_title = v21;

    v23 = v14;
  }

  return v14;
}

- (ATXTimeMarble)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateComponents"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];

  v9 = [(ATXTimeMarble *)self initWithSymbolName:v5 colorName:v6 dateComponents:v7 title:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  symbolName = self->_symbolName;
  v5 = a3;
  [v5 encodeObject:symbolName forKey:@"symbolName"];
  [v5 encodeObject:self->_colorName forKey:@"colorName"];
  [v5 encodeObject:self->_dateComponents forKey:@"dateComponents"];
  [v5 encodeObject:self->_title forKey:@"title"];
}

- (NSDate)date
{
  v3 = [MEMORY[0x1E695DEE8] currentCalendar];
  v4 = [(ATXTimeMarble *)self dateComponents];
  v5 = [v3 dateFromComponents:v4];

  return v5;
}

@end