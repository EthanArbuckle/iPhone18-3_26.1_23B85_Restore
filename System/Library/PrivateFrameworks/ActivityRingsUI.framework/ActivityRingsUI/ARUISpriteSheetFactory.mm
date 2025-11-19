@interface ARUISpriteSheetFactory
+ (id)defaultSpriteSheet;
+ (id)sharedInstance;
+ (id)sharingSpriteSheet;
+ (id)spriteSheetForRingType:(int64_t)a3;
+ (id)wheelchairSharingSpriteSheet;
+ (id)wheelchairSpriteSheet;
+ (id)wheelchairSpriteSheetForRingType:(int64_t)a3;
- (id)defaultSpriteTexture;
- (id)sharingSpriteTexture;
- (id)wheelchairSharingSpriteTexture;
- (id)wheelchairSpriteTexture;
@end

@implementation ARUISpriteSheetFactory

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ARUISpriteSheetFactory sharedInstance];
  }

  v3 = sharedInstance___sharedSpriteSheetFactory;

  return v3;
}

uint64_t __40__ARUISpriteSheetFactory_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ARUISpriteSheetFactory);
  v1 = sharedInstance___sharedSpriteSheetFactory;
  sharedInstance___sharedSpriteSheetFactory = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)defaultSpriteTexture
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_defaultSpriteTexture);
  if (!WeakRetained)
  {
    v4 = arui_rings_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = @"ringIconSprite";
      _os_log_impl(&dword_1CFD67000, v4, OS_LOG_TYPE_DEFAULT, "Loading texture with image format: %@", &v9, 0xCu);
    }

    v5 = MEMORY[0x1E69DCAB8];
    v6 = ActivityRingsUIFrameworkBundle();
    v7 = [v5 imageNamed:@"ringIconSprite" inBundle:v6 compatibleWithTraitCollection:0];

    WeakRetained = [[ARUISpriteTexture alloc] initWithImage:v7];
    objc_storeWeak(&self->_defaultSpriteTexture, WeakRetained);
  }

  return WeakRetained;
}

+ (id)defaultSpriteSheet
{
  v2 = +[ARUISpriteSheetFactory sharedInstance];
  v3 = [v2 defaultSpriteTexture];

  v4 = [ARUIGridSpriteGenerator generatorWithSpriteCount:3 framesPerSprite:121 rowsPerSprite:4 columnsPerSprite:32];
  v5 = [ARUISpriteSheet alloc];
  v6 = [v4 generateSprites];
  v7 = [(ARUISpriteSheet *)v5 initWithTexture:v3 sprites:v6];

  return v7;
}

+ (id)spriteSheetForRingType:(int64_t)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a3 == 3)
  {
    v3 = +[ARUISpriteSheetFactory defaultSpriteSheet];
  }

  else
  {
    v5 = +[ARUISpriteSheetFactory sharedInstance];
    v6 = [v5 defaultSpriteTexture];

    v7 = [ARUIGridSpriteGenerator generatorWithSpriteCount:3 framesPerSprite:121 rowsPerSprite:4 columnsPerSprite:32];
    v8 = [v7 generateSprites];
    v9 = [v8 objectAtIndex:a3];
    v10 = [ARUISpriteSheet alloc];
    v13[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v3 = [(ARUISpriteSheet *)v10 initWithTexture:v6 sprites:v11];
  }

  return v3;
}

- (id)wheelchairSpriteTexture
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_wheelchairSpriteTexture);
  if (!WeakRetained)
  {
    v4 = arui_rings_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = @"ringIconSprite_WHEELCHAIR";
      _os_log_impl(&dword_1CFD67000, v4, OS_LOG_TYPE_DEFAULT, "Loading texture with image format: %@", &v9, 0xCu);
    }

    v5 = MEMORY[0x1E69DCAB8];
    v6 = ActivityRingsUIFrameworkBundle();
    v7 = [v5 imageNamed:@"ringIconSprite_WHEELCHAIR" inBundle:v6 compatibleWithTraitCollection:0];

    WeakRetained = [[ARUISpriteTexture alloc] initWithImage:v7];
    objc_storeWeak(&self->_wheelchairSpriteTexture, WeakRetained);
  }

  return WeakRetained;
}

+ (id)wheelchairSpriteSheet
{
  v2 = +[ARUISpriteSheetFactory sharedInstance];
  v3 = [v2 wheelchairSpriteTexture];

  v4 = [ARUIGridSpriteGenerator generatorWithSpriteCount:3 framesPerSprite:121 rowsPerSprite:4 columnsPerSprite:32];
  v5 = [ARUISpriteSheet alloc];
  v6 = [v4 generateSprites];
  v7 = [(ARUISpriteSheet *)v5 initWithTexture:v3 sprites:v6];

  return v7;
}

+ (id)wheelchairSpriteSheetForRingType:(int64_t)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a3 == 3)
  {
    v3 = +[ARUISpriteSheetFactory wheelchairSpriteSheet];
  }

  else
  {
    v5 = +[ARUISpriteSheetFactory sharedInstance];
    v6 = [v5 wheelchairSpriteTexture];

    v7 = [ARUIGridSpriteGenerator generatorWithSpriteCount:3 framesPerSprite:121 rowsPerSprite:4 columnsPerSprite:32];
    v8 = [v7 generateSprites];
    v9 = [v8 objectAtIndex:a3];
    v10 = [ARUISpriteSheet alloc];
    v13[0] = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v3 = [(ARUISpriteSheet *)v10 initWithTexture:v6 sprites:v11];
  }

  return v3;
}

- (id)sharingSpriteTexture
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_sharingSpriteTexture);
  if (!WeakRetained)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sharingRingIconSprite"];
    v5 = arui_rings_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1CFD67000, v5, OS_LOG_TYPE_DEFAULT, "Loading texture with image format: %@", &v10, 0xCu);
    }

    v6 = MEMORY[0x1E69DCAB8];
    v7 = ActivityRingsUIFrameworkBundle();
    v8 = [v6 imageNamed:v4 inBundle:v7 compatibleWithTraitCollection:0];

    WeakRetained = [[ARUISpriteTexture alloc] initWithImage:v8];
    objc_storeWeak(&self->_sharingSpriteTexture, WeakRetained);
  }

  return WeakRetained;
}

+ (id)sharingSpriteSheet
{
  v2 = +[ARUISpriteSheetFactory sharedInstance];
  v3 = [v2 sharingSpriteTexture];

  v4 = [ARUIGridSpriteGenerator generatorWithSpriteCount:3 framesPerSprite:1 rowsPerSprite:1 columnsPerSprite:1];
  v5 = [ARUISpriteSheet alloc];
  v6 = [v4 generateSprites];
  v7 = [(ARUISpriteSheet *)v5 initWithTexture:v3 sprites:v6];

  return v7;
}

- (id)wheelchairSharingSpriteTexture
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_wheelchairSharingSpriteTexture);
  if (!WeakRetained)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sharingRingIconSprite_WHEELCHAIR"];
    v5 = arui_rings_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1CFD67000, v5, OS_LOG_TYPE_DEFAULT, "Loading texture with image format: %@", &v10, 0xCu);
    }

    v6 = MEMORY[0x1E69DCAB8];
    v7 = ActivityRingsUIFrameworkBundle();
    v8 = [v6 imageNamed:v4 inBundle:v7 compatibleWithTraitCollection:0];

    WeakRetained = [[ARUISpriteTexture alloc] initWithImage:v8];
    objc_storeWeak(&self->_wheelchairSharingSpriteTexture, WeakRetained);
  }

  return WeakRetained;
}

+ (id)wheelchairSharingSpriteSheet
{
  v2 = +[ARUISpriteSheetFactory sharedInstance];
  v3 = [v2 wheelchairSharingSpriteTexture];

  v4 = [ARUIGridSpriteGenerator generatorWithSpriteCount:3 framesPerSprite:1 rowsPerSprite:1 columnsPerSprite:1];
  v5 = [ARUISpriteSheet alloc];
  v6 = [v4 generateSprites];
  v7 = [(ARUISpriteSheet *)v5 initWithTexture:v3 sprites:v6];

  return v7;
}

@end