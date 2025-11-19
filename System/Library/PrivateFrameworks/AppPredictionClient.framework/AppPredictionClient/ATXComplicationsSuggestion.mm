@interface ATXComplicationsSuggestion
- (ATXComplicationsSuggestion)initWithCoder:(id)a3;
- (ATXComplicationsSuggestion)initWithSubtitleComplication:(id)a3 layoutType:(int64_t)a4 complications:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXComplicationsSuggestion

- (ATXComplicationsSuggestion)initWithSubtitleComplication:(id)a3 layoutType:(int64_t)a4 complications:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = ATXComplicationsSuggestion;
  v10 = [(ATXComplicationsSuggestion *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    subtitleComplication = v10->_subtitleComplication;
    v10->_subtitleComplication = v11;

    v10->_layoutType = a4;
    v13 = [v9 copy];
    complications = v10->_complications;
    v10->_complications = v13;
  }

  return v10;
}

- (ATXComplicationsSuggestion)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitleComplication"];
  v6 = [v4 decodeIntegerForKey:@"layoutType"];
  v7 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"complications"];

  v11 = [(ATXComplicationsSuggestion *)self initWithSubtitleComplication:v5 layoutType:v6 complications:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXComplicationsSuggestion *)self subtitleComplication];
  [v4 encodeObject:v5 forKey:@"subtitleComplication"];

  [v4 encodeInteger:-[ATXComplicationsSuggestion layoutType](self forKey:{"layoutType"), @"layoutType"}];
  v6 = [(ATXComplicationsSuggestion *)self complications];
  [v4 encodeObject:v6 forKey:@"complications"];
}

@end