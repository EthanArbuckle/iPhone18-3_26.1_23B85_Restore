@interface CIBurstImageSet
+ (id)burstImageSet;
+ (id)burstImageSetWithOptions:(id)a3;
- (BOOL)isPortrait;
- (CIBurstImageSet)initWithOptions:(id)a3;
- (id)bestImageIdentifiers;
- (id)coverImageIdentifier;
- (id)imageClusterForIdentifier:(id)a3;
- (id)statsForImageWithIdentifier:(id)a3;
- (void)addImageFromIOSurface:(__IOSurface *)a3 properties:(id)a4 identifier:(id)a5 completionBlock:(id)a6;
- (void)dealloc;
@end

@implementation CIBurstImageSet

+ (id)burstImageSet
{
  v2 = objc_alloc_init(CIBurstImageSet);

  return v2;
}

+ (id)burstImageSetWithOptions:(id)a3
{
  v3 = [[CIBurstImageSet alloc] initWithOptions:a3];

  return v3;
}

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {
  }

  v4.receiver = self;
  v4.super_class = CIBurstImageSet;
  [(CIBurstImageSet *)&v4 dealloc];
}

- (CIBurstImageSet)initWithOptions:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = CIBurstImageSet;
  v3 = [(CIBurstImageSet *)&v5 init];
  if (v3)
  {
    v3->_priv = objc_alloc_init(MEMORY[0x1E695DF90]);
    -[NSMutableDictionary setObject:forKeyedSubscript:](v3->_priv, "setObject:forKeyedSubscript:", [MEMORY[0x1E695DF70] array], @"ids");
    -[NSMutableDictionary setObject:forKeyedSubscript:](v3->_priv, "setObject:forKeyedSubscript:", [MEMORY[0x1E695DF70] array], @"stats");
    *uu = 0;
    v8 = 0;
    memset(out, 0, 37);
    MEMORY[0x19EAF65D0](uu);
    uuid_unparse(uu, out);
    -[NSMutableDictionary setObject:forKeyedSubscript:](v3->_priv, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AEC0] stringWithCString:out encoding:1], @"uuid");
  }

  return v3;
}

- (void)addImageFromIOSurface:(__IOSurface *)a3 properties:(id)a4 identifier:(id)a5 completionBlock:(id)a6
{
  if (a3 && a5)
  {
    [-[NSMutableDictionary objectForKeyedSubscript:](self->_priv objectForKeyedSubscript:{@"ids", "addObject:", a5}];
    v11 = [MEMORY[0x1E695DF90] dictionary];
    [v11 setObject:kCIBurstImageSet_VersionString_2 forKeyedSubscript:kCIBurstImageProperty_AlgorithmVersion];
    [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", IOSurfaceGetWidth(a3)), @"Image_Width"}];
    [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", IOSurfaceGetWidth(a3)), @"Image_Height"}];
    if ([a4 objectForKeyedSubscript:@"Orientation"])
    {
      [v11 setObject:objc_msgSend(a4 forKeyedSubscript:{"objectForKeyedSubscript:", @"Orientation", @"Image_Orientation"}];
    }

    v12 = [a4 valueForKeyPath:@"{MakerApple}.3"];
    if (v12)
    {
      v13 = v12;
      [objc_msgSend(v12 objectForKeyedSubscript:{@"timescale", "doubleValue"}];
      v15 = v14;
      [objc_msgSend(v13 objectForKeyedSubscript:{@"value", "doubleValue"}];
      v17 = [MEMORY[0x1E696AD98] numberWithDouble:v16 / v15];
      [v11 setObject:v17 forKeyedSubscript:kCIBurstImageProperty_ImageTimestamp];
    }

    v18 = [MEMORY[0x1E696AD98] numberWithDouble:timeElapsedSinceInit()];
    [v11 setObject:v18 forKeyedSubscript:kCIBurstImageProperty_TimeReceived];
    [v11 setObject:v18 forKeyedSubscript:kCIBurstImageProperty_TimeQueued];
    [v11 setObject:v18 forKeyedSubscript:kCIBurstImageProperty_TimeConverted];
    [v11 setObject:v18 forKeyedSubscript:kCIBurstImageProperty_TimeStartedAnalysis];
    [v11 setObject:v18 forKeyedSubscript:kCIBurstImageProperty_TimeStartedFaceDetection];
    [v11 setObject:v18 forKeyedSubscript:kCIBurstImageProperty_TimeDoneFaceDetection];
    [v11 setObject:v18 forKeyedSubscript:kCIBurstImageProperty_TimeDoneFaceBlinkDetection];
    [v11 setObject:v18 forKeyedSubscript:kCIBurstImageProperty_TimeDoneFaceFocusScore];
    [v11 setObject:v18 forKeyedSubscript:kCIBurstImageProperty_TimeDoneAnalysis];
    [-[NSMutableDictionary objectForKeyedSubscript:](self->_priv objectForKeyedSubscript:{@"stats", "addObject:", v11}];
    if ([objc_msgSend(a4 valueForKey:{@"AccumulatedFaceMetadata", "count"}])
    {
      [(NSMutableDictionary *)self->_priv setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"hasFace"];
    }

    if (a6)
    {
      v19 = *(a6 + 2);

      v19(a6, a5, 1);
    }
  }
}

- (id)bestImageIdentifiers
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (![-[CIBurstImageSet allImageIdentifiers](self "allImageIdentifiers")])
  {
    return MEMORY[0x1E695E0F0];
  }

  v4[0] = [-[CIBurstImageSet allImageIdentifiers](self "allImageIdentifiers")];
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
}

- (id)coverImageIdentifier
{
  result = [-[CIBurstImageSet allImageIdentifiers](self "allImageIdentifiers")];
  if (result)
  {
    v4 = [(CIBurstImageSet *)self allImageIdentifiers];
    v5 = [-[CIBurstImageSet allImageIdentifiers](self "allImageIdentifiers")] >> 1;

    return [v4 objectAtIndexedSubscript:v5];
  }

  return result;
}

- (id)imageClusterForIdentifier:(id)a3
{
  if (![-[CIBurstImageSet allImageIdentifiers](self "allImageIdentifiers")])
  {
    return 0;
  }

  return [(CIBurstImageSet *)self allImageIdentifiers];
}

- (id)statsForImageWithIdentifier:(id)a3
{
  v4 = [-[CIBurstImageSet allImageIdentifiers](self "allImageIdentifiers")];
  v5 = [(NSMutableDictionary *)self->_priv objectForKeyedSubscript:@"stats"];

  return [v5 objectAtIndex:v4];
}

- (BOOL)isPortrait
{
  v2 = [(NSMutableDictionary *)self->_priv objectForKeyedSubscript:@"hasFace"];

  return [v2 BOOLValue];
}

@end