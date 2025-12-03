@interface NTKExtragalacticGlyphDescription
- (NTKExtragalacticGlyphDescription)initWithName:(id)name color:(unint64_t)color style:(unint64_t)style;
@end

@implementation NTKExtragalacticGlyphDescription

- (NTKExtragalacticGlyphDescription)initWithName:(id)name color:(unint64_t)color style:(unint64_t)style
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = NTKExtragalacticGlyphDescription;
  v10 = [(NTKExtragalacticGlyphDescription *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_name, name);
    v11->_color = color;
    v11->_style = style;
  }

  return v11;
}

@end