@interface ARUISpriteSheet
- (ARUISpriteSheet)initWithSpriteSheet:(id)a3;
- (ARUISpriteSheet)initWithTexture:(id)a3 sprites:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation ARUISpriteSheet

- (ARUISpriteSheet)initWithTexture:(id)a3 sprites:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ARUISpriteSheet;
  v9 = [(ARUISpriteSheet *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_texture, a3);
    objc_storeStrong(&v10->_sprites, a4);
  }

  return v10;
}

- (ARUISpriteSheet)initWithSpriteSheet:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ARUISpriteSheet;
  v5 = [(ARUISpriteSheet *)&v14 init];
  if (v5)
  {
    v6 = [v4 texture];
    v7 = [v6 copy];
    texture = v5->_texture;
    v5->_texture = v7;

    v9 = objc_alloc(MEMORY[0x1E695DEC8]);
    v10 = [v4 sprites];
    v11 = [v9 initWithArray:v10 copyItems:1];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ARUISpriteSheet allocWithZone:a3];

  return [(ARUISpriteSheet *)v4 initWithSpriteSheet:self];
}

@end