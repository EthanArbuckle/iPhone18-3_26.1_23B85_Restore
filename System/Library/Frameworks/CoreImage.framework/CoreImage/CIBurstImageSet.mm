@interface CIBurstImageSet
+ (id)burstImageSet;
+ (id)burstImageSetWithOptions:(id)options;
- (BOOL)isPortrait;
- (CIBurstImageSet)initWithOptions:(id)options;
- (id)bestImageIdentifiers;
- (id)coverImageIdentifier;
- (id)imageClusterForIdentifier:(id)identifier;
- (id)statsForImageWithIdentifier:(id)identifier;
- (void)addImageFromIOSurface:(__IOSurface *)surface properties:(id)properties identifier:(id)identifier completionBlock:(id)block;
- (void)dealloc;
@end

@implementation CIBurstImageSet

+ (id)burstImageSet
{
  v2 = objc_alloc_init(CIBurstImageSet);

  return v2;
}

+ (id)burstImageSetWithOptions:(id)options
{
  v3 = [[CIBurstImageSet alloc] initWithOptions:options];

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

- (CIBurstImageSet)initWithOptions:(id)options
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

- (void)addImageFromIOSurface:(__IOSurface *)surface properties:(id)properties identifier:(id)identifier completionBlock:(id)block
{
  if (surface && identifier)
  {
    [-[NSMutableDictionary objectForKeyedSubscript:](self->_priv objectForKeyedSubscript:{@"ids", "addObject:", identifier}];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:kCIBurstImageSet_VersionString_2 forKeyedSubscript:kCIBurstImageProperty_AlgorithmVersion];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", IOSurfaceGetWidth(surface)), @"Image_Width"}];
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", IOSurfaceGetWidth(surface)), @"Image_Height"}];
    if ([properties objectForKeyedSubscript:@"Orientation"])
    {
      [dictionary setObject:objc_msgSend(properties forKeyedSubscript:{"objectForKeyedSubscript:", @"Orientation", @"Image_Orientation"}];
    }

    v12 = [properties valueForKeyPath:@"{MakerApple}.3"];
    if (v12)
    {
      v13 = v12;
      [objc_msgSend(v12 objectForKeyedSubscript:{@"timescale", "doubleValue"}];
      v15 = v14;
      [objc_msgSend(v13 objectForKeyedSubscript:{@"value", "doubleValue"}];
      v17 = [MEMORY[0x1E696AD98] numberWithDouble:v16 / v15];
      [dictionary setObject:v17 forKeyedSubscript:kCIBurstImageProperty_ImageTimestamp];
    }

    v18 = [MEMORY[0x1E696AD98] numberWithDouble:timeElapsedSinceInit()];
    [dictionary setObject:v18 forKeyedSubscript:kCIBurstImageProperty_TimeReceived];
    [dictionary setObject:v18 forKeyedSubscript:kCIBurstImageProperty_TimeQueued];
    [dictionary setObject:v18 forKeyedSubscript:kCIBurstImageProperty_TimeConverted];
    [dictionary setObject:v18 forKeyedSubscript:kCIBurstImageProperty_TimeStartedAnalysis];
    [dictionary setObject:v18 forKeyedSubscript:kCIBurstImageProperty_TimeStartedFaceDetection];
    [dictionary setObject:v18 forKeyedSubscript:kCIBurstImageProperty_TimeDoneFaceDetection];
    [dictionary setObject:v18 forKeyedSubscript:kCIBurstImageProperty_TimeDoneFaceBlinkDetection];
    [dictionary setObject:v18 forKeyedSubscript:kCIBurstImageProperty_TimeDoneFaceFocusScore];
    [dictionary setObject:v18 forKeyedSubscript:kCIBurstImageProperty_TimeDoneAnalysis];
    [-[NSMutableDictionary objectForKeyedSubscript:](self->_priv objectForKeyedSubscript:{@"stats", "addObject:", dictionary}];
    if ([objc_msgSend(properties valueForKey:{@"AccumulatedFaceMetadata", "count"}])
    {
      [(NSMutableDictionary *)self->_priv setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"hasFace"];
    }

    if (block)
    {
      v19 = *(block + 2);

      v19(block, identifier, 1);
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
    allImageIdentifiers = [(CIBurstImageSet *)self allImageIdentifiers];
    v5 = [-[CIBurstImageSet allImageIdentifiers](self "allImageIdentifiers")] >> 1;

    return [allImageIdentifiers objectAtIndexedSubscript:v5];
  }

  return result;
}

- (id)imageClusterForIdentifier:(id)identifier
{
  if (![-[CIBurstImageSet allImageIdentifiers](self "allImageIdentifiers")])
  {
    return 0;
  }

  return [(CIBurstImageSet *)self allImageIdentifiers];
}

- (id)statsForImageWithIdentifier:(id)identifier
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