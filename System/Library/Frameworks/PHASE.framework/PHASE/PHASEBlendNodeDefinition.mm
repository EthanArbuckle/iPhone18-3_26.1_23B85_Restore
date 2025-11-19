@interface PHASEBlendNodeDefinition
- (PHASEBlendNodeDefinition)init;
- (PHASEBlendNodeDefinition)initDistanceBlendWithSpatialMixerDefinition:(PHASESpatialMixerDefinition *)spatialMixerDefinition;
- (PHASEBlendNodeDefinition)initDistanceBlendWithSpatialMixerDefinition:(PHASESpatialMixerDefinition *)spatialMixerDefinition identifier:(NSString *)identifier;
- (PHASEBlendNodeDefinition)initWithBlendMetaParameterDefinition:(PHASENumberMetaParameterDefinition *)blendMetaParameterDefinition;
- (PHASEBlendNodeDefinition)initWithBlendMetaParameterDefinition:(PHASENumberMetaParameterDefinition *)blendMetaParameterDefinition identifier:(NSString *)identifier;
- (id)children;
- (void)addRangeForInputValuesAbove:(double)value fullGainAtValue:(double)fullGainAtValue fadeCurveType:(PHASECurveType)fadeCurveType subtree:(PHASESoundEventNodeDefinition *)subtree;
- (void)addRangeForInputValuesBelow:(double)value fullGainAtValue:(double)fullGainAtValue fadeCurveType:(PHASECurveType)fadeCurveType subtree:(PHASESoundEventNodeDefinition *)subtree;
- (void)addRangeForInputValuesBetween:(double)lowValue highValue:(double)highValue fullGainAtLowValue:(double)fullGainAtLowValue fullGainAtHighValue:(double)fullGainAtHighValue lowFadeCurveType:(PHASECurveType)lowFadeCurveType highFadeCurveType:(PHASECurveType)highFadeCurveType subtree:(PHASESoundEventNodeDefinition *)subtree;
- (void)addRangeWithEnvelope:(PHASEEnvelope *)envelope subtree:(PHASESoundEventNodeDefinition *)subtree;
@end

@implementation PHASEBlendNodeDefinition

- (PHASEBlendNodeDefinition)init
{
  [(PHASEBlendNodeDefinition *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEBlendNodeDefinition)initWithBlendMetaParameterDefinition:(PHASENumberMetaParameterDefinition *)blendMetaParameterDefinition identifier:(NSString *)identifier
{
  v6 = blendMetaParameterDefinition;
  v7 = identifier;
  v8 = [(PHASEBlendNodeDefinition *)self initWithBlendMetaParameterDefinition:v6];
  v9 = v8;
  if (v8)
  {
    [(PHASEDefinition *)v8 setIdentifier:v7];
    v10 = v9;
  }

  return v9;
}

- (PHASEBlendNodeDefinition)initWithBlendMetaParameterDefinition:(PHASENumberMetaParameterDefinition *)blendMetaParameterDefinition
{
  v5 = blendMetaParameterDefinition;
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:@"API Misuse" format:@"Cannot create a blend node definition with a nil blendMetaParameterDefinition"];
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v12.receiver = self;
  v12.super_class = PHASEBlendNodeDefinition;
  v6 = [(PHASEDefinition *)&v12 initInternal];
  if (!v6)
  {
    self = 0;
    goto LABEL_6;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = *(v6 + 4);
  *(v6 + 4) = v7;

  objc_storeStrong(v6 + 2, blendMetaParameterDefinition);
  v9 = *(v6 + 3);
  *(v6 + 3) = 0;

  self = v6;
  v10 = self;
LABEL_7:

  return v10;
}

- (PHASEBlendNodeDefinition)initDistanceBlendWithSpatialMixerDefinition:(PHASESpatialMixerDefinition *)spatialMixerDefinition identifier:(NSString *)identifier
{
  v6 = spatialMixerDefinition;
  v7 = identifier;
  v8 = [(PHASEBlendNodeDefinition *)self initDistanceBlendWithSpatialMixerDefinition:v6];
  v9 = v8;
  if (v8)
  {
    [(PHASEDefinition *)v8 setIdentifier:v7];
    v10 = v9;
  }

  return v9;
}

- (PHASEBlendNodeDefinition)initDistanceBlendWithSpatialMixerDefinition:(PHASESpatialMixerDefinition *)spatialMixerDefinition
{
  v5 = spatialMixerDefinition;
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:@"API Misuse" format:@"Cannot create a blend node definition with a nil spatialMixerDefinition"];
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v12.receiver = self;
  v12.super_class = PHASEBlendNodeDefinition;
  v6 = [(PHASEDefinition *)&v12 initInternal];
  if (!v6)
  {
    self = 0;
    goto LABEL_6;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = *(v6 + 4);
  *(v6 + 4) = v7;

  v9 = *(v6 + 2);
  *(v6 + 2) = 0;

  objc_storeStrong(v6 + 3, spatialMixerDefinition);
  self = v6;
  v10 = self;
LABEL_7:

  return v10;
}

- (id)children
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_ranges;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:{*(*(*(&v9 + 1) + 8 * i) + 8), v9}];
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)addRangeForInputValuesBelow:(double)value fullGainAtValue:(double)fullGainAtValue fadeCurveType:(PHASECurveType)fadeCurveType subtree:(PHASESoundEventNodeDefinition *)subtree
{
  v22 = subtree;
  v9 = objc_alloc_init(BlendRange);
  v10 = [[PHASEEnvelopeSegment alloc] initWithEndPoint:fadeCurveType curveType:value];
  v11 = [PHASEEnvelope alloc];
  v12 = [MEMORY[0x277CBEA60] arrayWithObject:v10];
  __asm { FMOV            V0.2D, #1.0 }

  v18 = [(PHASEEnvelope *)v11 initWithStartPoint:v12 segments:fullGainAtValue];
  blendEnvelope = v9->blendEnvelope;
  v9->blendEnvelope = v18;

  objc_storeStrong(&v9->subtree, subtree);
  [(NSMutableArray *)self->_ranges addObject:v9];
}

- (void)addRangeForInputValuesBetween:(double)lowValue highValue:(double)highValue fullGainAtLowValue:(double)fullGainAtLowValue fullGainAtHighValue:(double)fullGainAtHighValue lowFadeCurveType:(PHASECurveType)lowFadeCurveType highFadeCurveType:(PHASECurveType)highFadeCurveType subtree:(PHASESoundEventNodeDefinition *)subtree
{
  v28 = subtree;
  v13 = objc_alloc_init(BlendRange);
  v14 = [PHASEEnvelopeSegment alloc];
  __asm { FMOV            V0.2D, #1.0 }

  v20 = [(PHASEEnvelopeSegment *)v14 initWithEndPoint:lowFadeCurveType curveType:fullGainAtLowValue];
  v21 = [[PHASEEnvelopeSegment alloc] initWithEndPoint:highFadeCurveType curveType:highValue];
  if (fullGainAtLowValue == fullGainAtHighValue)
  {
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:{v20, fullGainAtHighValue, fullGainAtLowValue, v21, 0}];
  }

  else
  {
    v22 = [[PHASEEnvelopeSegment alloc] initWithEndPoint:1668435054 curveType:fullGainAtHighValue];
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:{v20, v22, v21, 0}];
  }

  v24 = [[PHASEEnvelope alloc] initWithStartPoint:v23 segments:lowValue];
  blendEnvelope = v13->blendEnvelope;
  v13->blendEnvelope = v24;

  objc_storeStrong(&v13->subtree, subtree);
  [(NSMutableArray *)self->_ranges addObject:v13];
}

- (void)addRangeForInputValuesAbove:(double)value fullGainAtValue:(double)fullGainAtValue fadeCurveType:(PHASECurveType)fadeCurveType subtree:(PHASESoundEventNodeDefinition *)subtree
{
  v23 = subtree;
  v9 = objc_alloc_init(BlendRange);
  v10 = [PHASEEnvelopeSegment alloc];
  __asm { FMOV            V0.2D, #1.0 }

  v16 = [(PHASEEnvelopeSegment *)v10 initWithEndPoint:fadeCurveType curveType:fullGainAtValue];
  v17 = [PHASEEnvelope alloc];
  v18 = [MEMORY[0x277CBEA60] arrayWithObject:v16];
  v19 = [(PHASEEnvelope *)v17 initWithStartPoint:v18 segments:value];
  blendEnvelope = v9->blendEnvelope;
  v9->blendEnvelope = v19;

  objc_storeStrong(&v9->subtree, subtree);
  [(NSMutableArray *)self->_ranges addObject:v9];
}

- (void)addRangeWithEnvelope:(PHASEEnvelope *)envelope subtree:(PHASESoundEventNodeDefinition *)subtree
{
  v9 = envelope;
  v7 = subtree;
  v8 = objc_alloc_init(BlendRange);
  objc_storeStrong(&v8->blendEnvelope, envelope);
  objc_storeStrong(&v8->subtree, subtree);
  [(NSMutableArray *)self->_ranges addObject:v8];
}

@end