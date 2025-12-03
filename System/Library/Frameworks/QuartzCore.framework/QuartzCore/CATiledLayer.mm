@interface CATiledLayer
+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers;
+ (id)defaultValueForKey:(id)key;
- (BOOL)canDrawRect:(CGRect)rect levelOfDetail:(int)detail;
- (BOOL)isDrawingEnabled;
- (BOOL)shouldArchiveValueForKey:(id)key;
- (CGColor)fillColor;
- (CGSize)tileSize;
- (double)maximumTileScale;
- (size_t)levelsOfDetail;
- (size_t)levelsOfDetailBias;
- (void)_colorSpaceDidChange;
- (void)_dealloc;
- (void)_display;
- (void)dealloc;
- (void)didChangeValueForKey:(id)key;
- (void)displayInRect:(CGRect)rect levelOfDetail:(int)detail options:(id)options;
- (void)setContents:(id)contents;
- (void)setDrawingEnabled:(BOOL)enabled;
- (void)setFillColor:(CGColor *)color;
- (void)setLevelsOfDetail:(size_t)levelsOfDetail;
- (void)setLevelsOfDetailBias:(size_t)levelsOfDetailBias;
- (void)setMaximumTileScale:(double)scale;
- (void)setNeedsDisplayInRect:(CGRect)rect;
- (void)setNeedsDisplayInRect:(CGRect)rect levelOfDetail:(int)detail options:(id)options;
- (void)setTileSize:(CGSize)tileSize;
@end

@implementation CATiledLayer

+ (BOOL)CA_automaticallyNotifiesObservers:(Class)observers
{
  v7 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == observers)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___CATiledLayer;
  return objc_msgSendSuper2(&v6, sel_CA_automaticallyNotifiesObservers_, observers);
}

- (void)setTileSize:(CGSize)tileSize
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = tileSize;
  CA::Layer::setter(self->super._attr.layer, 0x2C0, 0x14, &v3.width);
}

- (CGSize)tileSize
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = 0.0;
  v5 = 0.0;
  CA::Layer::getter(self->super._attr.layer, 0x2C0u, 0x14, &v4);
  v2 = v4;
  v3 = v5;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setLevelsOfDetailBias:(size_t)levelsOfDetailBias
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = levelsOfDetailBias;
  CA::Layer::setter(self->super._attr.layer, 0x1D7, 0xE, v3);
}

- (size_t)levelsOfDetailBias
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x1D7u, 0xE, v3);
  return v3[0];
}

- (void)setLevelsOfDetail:(size_t)levelsOfDetail
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = levelsOfDetail;
  CA::Layer::setter(self->super._attr.layer, 0x1D6, 0xE, v3);
}

- (size_t)levelsOfDetail
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x1D6u, 0xE, v3);
  return v3[0];
}

- (void)_colorSpaceDidChange
{
  +[CATransaction lock];
  contents = [(CALayer *)self contents];
  if (contents)
  {
    v4 = contents;
    v5 = CFGetTypeID(contents);
    if (CAImageProviderGetTypeID::once[0] != -1)
    {
      dispatch_once(CAImageProviderGetTypeID::once, &__block_literal_global_5_9450);
    }

    if (v5 == CAImageProviderGetTypeID::type)
    {
      CAImageProviderInvalidateLOD(v4, 0, 0, *(v4 + 220), *(v4 + 224), 0xFFFFFFFFLL, 0);
    }
  }

  +[CATransaction unlock];
}

- (void)_display
{
  levelsOfDetail = [(CATiledLayer *)self levelsOfDetail];
  levelsOfDetailBias = [(CATiledLayer *)self levelsOfDetailBias];
  [(CALayer *)self bounds];
  v6 = v5;
  v8 = v7;
  [(CALayer *)self contentsScale];
  v10 = v6 * v9;
  v11 = v8 * v9;
  [(CATiledLayer *)self tileSize];
  if (v12 > 3072.0)
  {
    v12 = 3072.0;
  }

  if (v12 < 16.0)
  {
    v12 = 16.0;
  }

  v14 = v12;
  if (v13 <= 3072.0)
  {
    v15 = v13;
  }

  else
  {
    v15 = 3072.0;
  }

  if (v15 < 16.0)
  {
    v15 = 16.0;
  }

  v16 = v15;
  if ([(CALayer *)self isOpaque])
  {
    v17 = 5;
  }

  else
  {
    v17 = 4;
  }

  if ([(CALayer *)self canDrawConcurrently])
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 | 2;
  }

  if (v10 >= v11)
  {
    v19 = v11;
  }

  else
  {
    v19 = v10;
  }

  v20 = 32 - __clz(v19);
  if (v19 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  if (levelsOfDetail - levelsOfDetailBias <= v21)
  {
    v22 = levelsOfDetail;
  }

  else
  {
    v22 = v21 + levelsOfDetailBias;
  }

  +[CATransaction lock];
  contents = [(CALayer *)self contents];
  if (!contents)
  {
    goto LABEL_36;
  }

  v24 = contents;
  v25 = v22;
  v26 = v18;
  v27 = v16;
  v28 = v14;
  v29 = CFGetTypeID(contents);
  if (CAImageProviderGetTypeID::once[0] != -1)
  {
    dispatch_once(CAImageProviderGetTypeID::once, &__block_literal_global_5_9450);
  }

  v30 = v29 == CAImageProviderGetTypeID::type;
  v14 = v28;
  v16 = v27;
  v18 = v26;
  v22 = v25;
  if (v30)
  {
    CFRetain(v24);
    +[CATransaction unlock];
    if (*(v24 + 236) == v25 && *(v24 + 240) == levelsOfDetailBias && *(v24 + 228) == v14 && *(v24 + 232) == v16 && *(v24 + 216) == v18)
    {
      goto LABEL_39;
    }

    CFRelease(v24);
  }

  else
  {
LABEL_36:
    +[CATransaction unlock];
  }

  [objc_opt_class() fadeDuration];
  v32 = CAImageProviderCreate(v10, v11, v14, v16, v22, levelsOfDetailBias, v18, v31);
  if (v32)
  {
    v24 = v32;
    *(v32 + 248) = [objc_opt_class() prefetchedTiles];
LABEL_39:
    CAImageProviderSetImageSize(v24, v10, v11);
    CAImageProviderSetFillColor(v24, [(CATiledLayer *)self fillColor]);
    [(CATiledLayer *)self maximumTileScale];
    v35 = trunc(v34) + 0.5;
    if (*(v24 + 264) != v35)
    {
      *(v24 + 264) = v35;
      if (*(v24 + 24))
      {
        cfarray = create_cfarray(2, v33, v35, 0);
        CA::Transaction::add_command(0x12, *(v24 + 24), *(v24 + 56), cfarray, v37);
        CFRelease(cfarray);
      }
    }

    [(CATiledLayer *)self setContents:v24];

    CFRelease(v24);
    return;
  }

  [(CATiledLayer *)self setContents:0];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  CATiledLayerDestroy(self);
  v3.receiver = self;
  v3.super_class = CATiledLayer;
  [(CALayer *)&v3 dealloc];
}

- (void)_dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  CATiledLayerDestroy(self);
  v3.receiver = self;
  v3.super_class = CATiledLayer;
  [(CALayer *)&v3 _dealloc];
}

- (void)setContents:(id)contents
{
  v15 = *MEMORY[0x1E69E9840];
  contents = [(CALayer *)self contents];
  v6 = contents;
  if (contents && contents != contents)
  {
    v7 = CFGetTypeID(contents);
    if (CAImageProviderGetTypeID::once[0] != -1)
    {
      dispatch_once(CAImageProviderGetTypeID::once, &__block_literal_global_5_9450);
    }

    if (v7 == CAImageProviderGetTypeID::type)
    {
      CAImageProviderSetCallback(v6, 0, 0);
      CAImageProviderRemoveLayer(v6, self);
    }
  }

  v14.receiver = self;
  v14.super_class = CATiledLayer;
  [(CALayer *)&v14 setContents:contents];
  contents2 = [(CALayer *)self contents];
  if (contents2)
  {
    v9 = contents2;
    v10 = CFGetTypeID(contents2);
    if (CAImageProviderGetTypeID::once[0] != -1)
    {
      dispatch_once(CAImageProviderGetTypeID::once, &__block_literal_global_5_9450);
    }

    if (v10 == CAImageProviderGetTypeID::type)
    {
      if (v6 != contents)
      {
        os_unfair_lock_lock((v9 + 16));
        *(v9 + 32) = x_list_prepend(*(v9 + 32), self);
        os_unfair_lock_unlock((v9 + 16));
      }

      if ([(CATiledLayer *)self isDrawingEnabled])
      {
        v11 = tiled_layer_render;
        v12 = v9;
        selfCopy = self;
      }

      else
      {
        v12 = v9;
        v11 = 0;
        selfCopy = 0;
      }

      CAImageProviderSetCallback(v12, v11, selfCopy);
    }
  }
}

- (void)setNeedsDisplayInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = *MEMORY[0x1E69E9840];
  rectCopy = rect;
  contents = [(CALayer *)self contents];
  if (contents)
  {
    v9 = contents;
    v10 = CFGetTypeID(contents);
    if (CAImageProviderGetTypeID::once[0] != -1)
    {
      dispatch_once(CAImageProviderGetTypeID::once, &__block_literal_global_5_9450);
    }

    if (v10 == CAImageProviderGetTypeID::type)
    {
      v12 = 0;
      v13 = 0;
      if (convertRectToImageCoordinates(self, *(v9 + 220), *(v9 + 224), &rectCopy, &v12))
      {
        CAImageProviderInvalidateLOD(v9, v12, HIDWORD(v12), v13, HIDWORD(v13), 0xFFFFFFFFLL, 0);
        [(CALayer *)self setContentsChanged];
      }
    }
  }

  v11.receiver = self;
  v11.super_class = CATiledLayer;
  [(CALayer *)&v11 setNeedsDisplayInRect:x, y, width, height];
}

- (BOOL)shouldArchiveValueForKey:(id)key
{
  v7 = *MEMORY[0x1E69E9840];
  if ([key isEqualToString:@"contents"])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = CATiledLayer;
  return [(CALayer *)&v6 shouldArchiveValueForKey:key];
}

- (void)didChangeValueForKey:(id)key
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(key, 0);
  v6 = v5;
  if (v5 <= 512)
  {
    if ((v5 - 470) >= 2)
    {
      if (v5 == 209 || v5 == 246)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }

LABEL_12:
    [(CALayer *)self setNeedsDisplay];
    goto LABEL_13;
  }

  if (v5 == 704 || v5 == 692)
  {
    goto LABEL_12;
  }

  if (v5 == 513)
  {
LABEL_5:
    v7 = *MEMORY[0x1E695F050];
    v8 = *(MEMORY[0x1E695F050] + 8);
    v9 = *(MEMORY[0x1E695F050] + 16);
    v10 = *(MEMORY[0x1E695F050] + 24);
    v13.receiver = self;
    v13.super_class = CATiledLayer;
    [(CALayer *)&v13 setNeedsDisplayInRect:v7, v8, v9, v10];
    [(CALayer *)self setContentsChanged];
    goto LABEL_13;
  }

LABEL_9:
  v11 = [CATiledLayer didChangeValueForKey:]::contentsAreFlipped;
  if (![CATiledLayer didChangeValueForKey:]::contentsAreFlipped)
  {
    v11 = CAInternAtom(@"contentsAreFlipped", 1);
    [CATiledLayer didChangeValueForKey:]::contentsAreFlipped = v11;
  }

  if (v6 == v11)
  {
    goto LABEL_12;
  }

LABEL_13:
  v12.receiver = self;
  v12.super_class = CATiledLayer;
  [(CATiledLayer *)&v12 didChangeValueForKey:key];
}

+ (id)defaultValueForKey:(id)key
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = CAInternAtom(key, 0);
  if (v5 <= 469)
  {
    if (v5 == 89)
    {
      shouldDrawOnMainThread = [self shouldDrawOnMainThread];
      v7 = MEMORY[0x1E695E4C0];
      if (!shouldDrawOnMainThread)
      {
        v7 = MEMORY[0x1E695E4D0];
      }
    }

    else
    {
      if (v5 != 209)
      {
        goto LABEL_17;
      }

      v7 = MEMORY[0x1E695E4D0];
    }

    return *v7;
  }

  switch(v5)
  {
    case 704:
      result = +[CATiledLayer defaultValueForKey:]::ts;
      if (!+[CATiledLayer defaultValueForKey:]::ts)
      {
        result = [MEMORY[0x1E696B098] valueWithSize:{256.0, 256.0}];
        +[CATiledLayer defaultValueForKey:]::ts = result;
      }

      break;
    case 471:
      result = +[CATiledLayer defaultValueForKey:]::zero;
      if (!+[CATiledLayer defaultValueForKey:]::zero)
      {
        result = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
        +[CATiledLayer defaultValueForKey:]::zero = result;
      }

      break;
    case 470:
      result = +[CATiledLayer defaultValueForKey:]::one;
      if (!+[CATiledLayer defaultValueForKey:]::one)
      {
        result = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:1];
        +[CATiledLayer defaultValueForKey:]::one = result;
      }

      return result;
    default:
LABEL_17:
      v9.receiver = self;
      v9.super_class = &OBJC_METACLASS___CATiledLayer;
      return objc_msgSendSuper2(&v9, sel_defaultValueForKey_, key);
  }

  return result;
}

- (void)setDrawingEnabled:(BOOL)enabled
{
  v4 = *MEMORY[0x1E69E9840];
  enabledCopy = enabled;
  CA::Layer::setter(self->super._attr.layer, 0xD1, 7, &enabledCopy);
}

- (BOOL)isDrawingEnabled
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  CA::Layer::getter(self->super._attr.layer, 0xD1u, 7, &v3);
  return v3 != 0;
}

- (void)setMaximumTileScale:(double)scale
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = scale;
  CA::Layer::setter(self->super._attr.layer, 0x201, 0x12, v3);
}

- (double)maximumTileScale
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0x201u, 0x12, v3);
  return *v3;
}

- (void)setFillColor:(CGColor *)color
{
  v3[1] = *MEMORY[0x1E69E9840];
  *&v3[0] = color;
  CA::Layer::setter(self->super._attr.layer, 0xF6, 2, v3);
}

- (CGColor)fillColor
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  CA::Layer::getter(self->super._attr.layer, 0xF6u, 2, v3);
  return v3[0];
}

- (void)displayInRect:(CGRect)rect levelOfDetail:(int)detail options:(id)options
{
  v15 = *MEMORY[0x1E69E9840];
  rectCopy = rect;
  +[CATransaction begin];
  [(CATiledLayer *)self _display];
  +[CATransaction lock];
  contents = [(CALayer *)self contents];
  +[CATransaction unlock];
  if (contents)
  {
    v9 = CFGetTypeID(contents);
    if (CAImageProviderGetTypeID::once[0] != -1)
    {
      dispatch_once(CAImageProviderGetTypeID::once, &__block_literal_global_5_9450);
    }

    if (v9 == CAImageProviderGetTypeID::type)
    {
      v12 = 0;
      v13 = 0;
      if (convertRectToImageCoordinates(self, contents[55], contents[56], &rectCopy, &v12))
      {
        if (options)
        {
          v10 = [objc_msgSend(options objectForKey:{@"uncollectable", "BOOLValue"}];
          if ([objc_msgSend(options objectForKey:{@"disableFade", "BOOLValue"}] ? v10 | 4 : v10)
          {
            +[CATransaction setValue:forKey:](CATransaction, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:?], @"CATiledLayerFlags");
          }
        }

        CAImageProviderDraw(contents, v12, SHIDWORD(v12), v13, SHIDWORD(v13), detail);
      }
    }
  }

  +[CATransaction commit];
}

- (BOOL)canDrawRect:(CGRect)rect levelOfDetail:(int)detail
{
  v4 = *&detail;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  +[CATransaction lock];
  delegate = [(CALayer *)self delegate];
  +[CATransaction unlock];
  if (objc_opt_respondsToSelector())
  {
    v11 = [delegate tiledLayer:self canDrawRect:v4 levelOfDetail:{x, y, width, height}];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)setNeedsDisplayInRect:(CGRect)rect levelOfDetail:(int)detail options:(id)options
{
  v6 = *&detail;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v21 = *MEMORY[0x1E69E9840];
  rectCopy = rect;
  contents = [(CALayer *)self contents];
  if (contents)
  {
    v13 = contents;
    v14 = CFGetTypeID(contents);
    if (CAImageProviderGetTypeID::once[0] != -1)
    {
      dispatch_once(CAImageProviderGetTypeID::once, &__block_literal_global_5_9450);
    }

    if (v14 == CAImageProviderGetTypeID::type)
    {
      v18 = 0;
      v19 = 0;
      if (convertRectToImageCoordinates(self, *(v13 + 220), *(v13 + 224), &rectCopy, &v18))
      {
        v15 = [objc_msgSend(options objectForKey:{@"onlyIfNull", "BOOLValue"}];
        if ([objc_msgSend(options objectForKey:{@"removeImmediately", "BOOLValue"}])
        {
          v16 = v15 | 2;
        }

        else
        {
          v16 = v15;
        }

        CAImageProviderInvalidateLOD(v13, v18, HIDWORD(v18), v19, HIDWORD(v19), v6, v16);
        [(CALayer *)self setContentsChanged];
      }
    }
  }

  v17.receiver = self;
  v17.super_class = CATiledLayer;
  [(CALayer *)&v17 setNeedsDisplayInRect:x, y, width, height];
}

@end