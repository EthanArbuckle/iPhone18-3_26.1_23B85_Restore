@interface ATXComplicationsSuggestion
- (ATXComplicationsSuggestion)initWithCoder:(id)coder;
- (ATXComplicationsSuggestion)initWithSubtitleComplication:(id)complication layoutType:(int64_t)type complications:(id)complications;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXComplicationsSuggestion

- (ATXComplicationsSuggestion)initWithSubtitleComplication:(id)complication layoutType:(int64_t)type complications:(id)complications
{
  complicationCopy = complication;
  complicationsCopy = complications;
  v16.receiver = self;
  v16.super_class = ATXComplicationsSuggestion;
  v10 = [(ATXComplicationsSuggestion *)&v16 init];
  if (v10)
  {
    v11 = [complicationCopy copy];
    subtitleComplication = v10->_subtitleComplication;
    v10->_subtitleComplication = v11;

    v10->_layoutType = type;
    v13 = [complicationsCopy copy];
    complications = v10->_complications;
    v10->_complications = v13;
  }

  return v10;
}

- (ATXComplicationsSuggestion)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitleComplication"];
  v6 = [coderCopy decodeIntegerForKey:@"layoutType"];
  v7 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v9 = [v7 setWithArray:v8];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"complications"];

  v11 = [(ATXComplicationsSuggestion *)self initWithSubtitleComplication:v5 layoutType:v6 complications:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  subtitleComplication = [(ATXComplicationsSuggestion *)self subtitleComplication];
  [coderCopy encodeObject:subtitleComplication forKey:@"subtitleComplication"];

  [coderCopy encodeInteger:-[ATXComplicationsSuggestion layoutType](self forKey:{"layoutType"), @"layoutType"}];
  complications = [(ATXComplicationsSuggestion *)self complications];
  [coderCopy encodeObject:complications forKey:@"complications"];
}

@end