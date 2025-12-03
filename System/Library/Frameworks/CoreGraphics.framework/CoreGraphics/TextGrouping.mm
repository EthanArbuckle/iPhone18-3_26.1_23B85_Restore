@interface TextGrouping
- (TextGrouping)initWithTextElement:(id)element text:(id)text;
@end

@implementation TextGrouping

- (TextGrouping)initWithTextElement:(id)element text:(id)text
{
  v16[1] = *MEMORY[0x1E69E9840];
  elementCopy = element;
  textCopy = text;
  v15.receiver = self;
  v15.super_class = TextGrouping;
  v8 = [(TextGrouping *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_text, text);
    boundingQuad = [elementCopy boundingQuad];
    boundingQuad = v9->_boundingQuad;
    v9->_boundingQuad = boundingQuad;

    v9->_layoutDirection = 1;
    v16[0] = elementCopy;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    subregions = v9->_subregions;
    v9->_subregions = v12;

    v9->_textRegionType = 2;
  }

  return v9;
}

@end