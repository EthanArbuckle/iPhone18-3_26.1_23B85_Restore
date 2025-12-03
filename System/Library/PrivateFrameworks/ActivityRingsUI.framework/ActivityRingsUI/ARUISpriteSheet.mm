@interface ARUISpriteSheet
- (ARUISpriteSheet)initWithSpriteSheet:(id)sheet;
- (ARUISpriteSheet)initWithTexture:(id)texture sprites:(id)sprites;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation ARUISpriteSheet

- (ARUISpriteSheet)initWithTexture:(id)texture sprites:(id)sprites
{
  textureCopy = texture;
  spritesCopy = sprites;
  v12.receiver = self;
  v12.super_class = ARUISpriteSheet;
  v9 = [(ARUISpriteSheet *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_texture, texture);
    objc_storeStrong(&v10->_sprites, sprites);
  }

  return v10;
}

- (ARUISpriteSheet)initWithSpriteSheet:(id)sheet
{
  sheetCopy = sheet;
  v14.receiver = self;
  v14.super_class = ARUISpriteSheet;
  v5 = [(ARUISpriteSheet *)&v14 init];
  if (v5)
  {
    texture = [sheetCopy texture];
    v7 = [texture copy];
    texture = v5->_texture;
    v5->_texture = v7;

    v9 = objc_alloc(MEMORY[0x1E695DEC8]);
    sprites = [sheetCopy sprites];
    v11 = [v9 initWithArray:sprites copyItems:1];
    sprites = v5->_sprites;
    v5->_sprites = v11;
  }

  return v5;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ARUISpriteSheet;
  v3 = [(ARUISpriteSheet *)&v7 description];
  v4 = [v3 substringWithRange:{0, objc_msgSend(v3, "length") - 1}];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@, texture: %@, sprites: %@>", v4, self->_texture, self->_sprites];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ARUISpriteSheet allocWithZone:zone];

  return [(ARUISpriteSheet *)v4 initWithSpriteSheet:self];
}

@end