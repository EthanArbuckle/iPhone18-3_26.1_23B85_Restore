@interface SFAccountIconSharingBadgeImageProvider
+ (id)sharedProvider;
- (SFAccountIconSharingBadgeImageProvider)init;
- (id)_createBadgeImageWithDiameter:(unint64_t)a3;
- (id)badgeImageForDiameter:(unint64_t)a3;
- (void)_resetAndInformSubscribers;
@end

@implementation SFAccountIconSharingBadgeImageProvider

- (SFAccountIconSharingBadgeImageProvider)init
{
  v8.receiver = self;
  v8.super_class = SFAccountIconSharingBadgeImageProvider;
  v2 = [(SFAccountIconSharingBadgeImageProvider *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    subscribers = v2->_subscribers;
    v2->_subscribers = v3;

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel__resetAndInformSubscribers name:*MEMORY[0x1E69DEA38] object:0];

    v6 = v2;
  }

  return v2;
}

+ (id)sharedProvider
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SFAccountIconSharingBadgeImageProvider_sharedProvider__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedProvider_onceToken != -1)
  {
    dispatch_once(&sharedProvider_onceToken, block);
  }

  v2 = sharedProvider_provider;

  return v2;
}

void __56__SFAccountIconSharingBadgeImageProvider_sharedProvider__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedProvider_provider;
  sharedProvider_provider = v1;
}

- (id)badgeImageForDiameter:(unint64_t)a3
{
  badgeDiameterToImageCache = self->_badgeDiameterToImageCache;
  if (!badgeDiameterToImageCache)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = self->_badgeDiameterToImageCache;
    self->_badgeDiameterToImageCache = v6;

    badgeDiameterToImageCache = self->_badgeDiameterToImageCache;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)badgeDiameterToImageCache objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = [(SFAccountIconSharingBadgeImageProvider *)self _createBadgeImageWithDiameter:a3];
    v10 = self->_badgeDiameterToImageCache;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v10 setObject:v9 forKeyedSubscript:v11];
  }

  v12 = v9;

  return v12;
}

- (id)_createBadgeImageWithDiameter:(unint64_t)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DCA80] defaultFormat];
  [v4 setOpaque:0];
  v5 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v4 format:{v3, v3}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__SFAccountIconSharingBadgeImageProvider__createBadgeImageWithDiameter___block_invoke;
  v8[3] = &__block_descriptor_80_e40_v16__0__UIGraphicsImageRendererContext_8l;
  v8[4] = 0;
  v8[5] = 0;
  *&v8[6] = v3;
  *&v8[7] = v3;
  *&v8[8] = v3;
  *&v8[9] = v3;
  v6 = [v5 imageWithActions:v8];

  return v6;
}

void __72__SFAccountIconSharingBadgeImageProvider__createBadgeImageWithDiameter___block_invoke(double *a1)
{
  v2 = [MEMORY[0x1E69DC888] darkGrayColor];
  [v2 set];

  v3 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{a1[4], a1[5], a1[6], a1[7]}];
  [v3 fill];

  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"person.2.fill"];
  v5 = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [v4 imageWithTintColor:v5 renderingMode:1];

  [v6 size];
  [v6 size];
  _SFCGRectOfSizeAlignedWithinRect();
  _SFRoundRectToPixels();
  [v6 drawInRect:?];
}

- (void)_resetAndInformSubscribers
{
  v13 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self->_badgeDiameterToImageCache removeAllObjects];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = self->_subscribers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) reset];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

@end