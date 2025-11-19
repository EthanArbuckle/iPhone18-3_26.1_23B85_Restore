@interface TextGrouping
- (TextGrouping)initWithTextElement:(id)a3 text:(id)a4;
@end

@implementation TextGrouping

- (TextGrouping)initWithTextElement:(id)a3 text:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = TextGrouping;
  v8 = [(TextGrouping *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_text, a4);
    v10 = [v6 boundingQuad];
    boundingQuad = v9->_boundingQuad;
    v9->_boundingQuad = v10;

    v9->_layoutDirection = 1;
    v16[0] = v6;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    subregions = v9->_subregions;
    v9->_subregions = v12;

    v9->_textRegionType = 2;
  }

  return v9;
}

@end