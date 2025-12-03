@interface GKBlendNoiseModifier
- (GKBlendNoiseModifier)initWithSelectionRangeLowerBound:(double)bound selectionRangeUpperBound:(double)upperBound selectionBoundaryBlendDistance:(double)distance;
- (double)valueAt:(GKBlendNoiseModifier *)self;
- (id)cloneModule;
@end

@implementation GKBlendNoiseModifier

- (GKBlendNoiseModifier)initWithSelectionRangeLowerBound:(double)bound selectionRangeUpperBound:(double)upperBound selectionBoundaryBlendDistance:(double)distance
{
  v9.receiver = self;
  v9.super_class = GKBlendNoiseModifier;
  result = [(GKNoiseModifier *)&v9 initWithInputModuleCount:3];
  if (result)
  {
    result->_lowerBound = bound;
    result->_upperBound = upperBound;
    result->_blendDistance = distance;
  }

  return result;
}

- (double)valueAt:(GKBlendNoiseModifier *)self
{
  v14 = v2[1];
  v15 = *v2;
  v4 = [(NSMutableArray *)self->super._inputModules objectAtIndexedSubscript:0];
  v16 = v15;
  v17 = v14;
  [v4 valueAt:&v16];
  v6 = v5;

  v7 = [(NSMutableArray *)self->super._inputModules objectAtIndexedSubscript:1];
  v16 = v15;
  v17 = v14;
  [v7 valueAt:&v16];
  v9 = v8;

  v10 = [(NSMutableArray *)self->super._inputModules objectAtIndexedSubscript:2];
  v16 = v15;
  v17 = v14;
  [v10 valueAt:&v16];
  v12 = v11;

  if (self->_lowerBound > v12 || v12 > self->_upperBound)
  {
    return v6;
  }

  return v9;
}

- (id)cloneModule
{
  v2 = [[GKBlendNoiseModifier alloc] initWithSelectionRangeLowerBound:self->_lowerBound selectionRangeUpperBound:self->_upperBound selectionBoundaryBlendDistance:self->_blendDistance];

  return v2;
}

@end