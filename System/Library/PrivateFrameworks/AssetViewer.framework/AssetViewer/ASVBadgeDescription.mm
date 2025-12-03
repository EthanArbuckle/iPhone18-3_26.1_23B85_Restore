@interface ASVBadgeDescription
+ (id)descriptionForSize:(CGSize)size;
- (ASVBadgeDescription)initWithSizeClass:(unint64_t)class;
- (CGPoint)badgeOffset;
- (CGSize)badgeSize;
@end

@implementation ASVBadgeDescription

+ (id)descriptionForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = [ASVBadgeDescription alloc];
  if (width >= height)
  {
    v6 = height;
  }

  else
  {
    v6 = width;
  }

  v7 = [(ASVBadgeDescription *)v5 initWithSizeClass:v6 >= 280.0];

  return v7;
}

- (ASVBadgeDescription)initWithSizeClass:(unint64_t)class
{
  v16.receiver = self;
  v16.super_class = ASVBadgeDescription;
  v4 = [(ASVBadgeDescription *)&v16 init];
  v5 = v4;
  if (v4)
  {
    v4->_badgeSizeClass = class;
    if (class)
    {
      if (class != 1)
      {
LABEL_7:
        v14 = v5;
        goto LABEL_8;
      }

      v6 = 20.0;
      v7 = 16.0;
      v8 = @"Badge-Large";
      v9 = 0x4051800000000000;
    }

    else
    {
      v7 = 8.0;
      v8 = @"Badge-Small";
      v9 = 0x4041800000000000;
      v6 = 8.0;
    }

    v10 = MEMORY[0x277D755B8];
    v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AssetViewer"];
    v12 = [v10 imageNamed:v8 inBundle:v11];
    badgeImage = v5->_badgeImage;
    v5->_badgeImage = v12;

    v5->_shadowSize = v7;
    *&v5->_badgeSize.width = v9;
    *&v5->_badgeSize.height = v9;
    v5->_badgeOffset.x = v6;
    v5->_badgeOffset.y = v6;
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

- (CGSize)badgeSize
{
  objc_copyStruct(v4, &self->_badgeSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGPoint)badgeOffset
{
  objc_copyStruct(v4, &self->_badgeOffset, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

@end