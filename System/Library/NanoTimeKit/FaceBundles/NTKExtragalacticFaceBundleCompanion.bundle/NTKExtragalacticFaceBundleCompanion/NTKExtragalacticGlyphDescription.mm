@interface NTKExtragalacticGlyphDescription
- (NTKExtragalacticGlyphDescription)initWithName:(id)a3 color:(unint64_t)a4 style:(unint64_t)a5;
@end

@implementation NTKExtragalacticGlyphDescription

- (NTKExtragalacticGlyphDescription)initWithName:(id)a3 color:(unint64_t)a4 style:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = NTKExtragalacticGlyphDescription;
  v10 = [(NTKExtragalacticGlyphDescription *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_name, a3);
    v11->_color = a4;
    v11->_style = a5;
  }

  return v11;
}

@end