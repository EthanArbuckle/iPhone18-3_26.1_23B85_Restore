@interface AVAssetVariantRenditionSpecificAudioAttributePredicate
- (AVAssetVariantRenditionSpecificAudioAttributePredicate)initWithAttributeSelector:(SEL)selector mediaSelectionOption:(id)option value:(id)value operatorType:(unint64_t)type;
@end

@implementation AVAssetVariantRenditionSpecificAudioAttributePredicate

- (AVAssetVariantRenditionSpecificAudioAttributePredicate)initWithAttributeSelector:(SEL)selector mediaSelectionOption:(id)option value:(id)value operatorType:(unint64_t)type
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (option)
  {
    v10 = [MEMORY[0x1E696ABC8] expressionForConstantValue:{objc_msgSend(option, "propertyList")}];
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC8] expressionForVariable:*MEMORY[0x1E6970BE0]];
  }

  v11 = v10;
  v12 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"audioAttributes"];
  v16[0] = v11;
  v13 = [MEMORY[0x1E696ABC8] expressionForFunction:v12 selectorName:objc_msgSend(MEMORY[0x1E696AEC0] arguments:{"stringWithUTF8String:", sel_getName(selector)), objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v16, 1)}];
  v15.receiver = self;
  v15.super_class = AVAssetVariantRenditionSpecificAudioAttributePredicate;
  return -[AVAssetVariantRenditionSpecificAudioAttributePredicate initWithLeftExpression:rightExpression:modifier:type:options:](&v15, sel_initWithLeftExpression_rightExpression_modifier_type_options_, v13, [MEMORY[0x1E696ABC8] expressionForConstantValue:value], 0, type, 0);
}

@end