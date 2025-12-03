@interface GKTerraceNoiseModifier
- (GKTerraceNoiseModifier)initWithPeakInputValues:(id)values terracesInverted:(BOOL)inverted;
- (double)valueAt:(GKTerraceNoiseModifier *)self;
- (id)cloneModule;
- (void)dealloc;
@end

@implementation GKTerraceNoiseModifier

- (GKTerraceNoiseModifier)initWithPeakInputValues:(id)values terracesInverted:(BOOL)inverted
{
  valuesCopy = values;
  v13.receiver = self;
  v13.super_class = GKTerraceNoiseModifier;
  v7 = [(GKNoiseModifier *)&v13 initWithInputModuleCount:1];
  if (v7)
  {
    v8 = [valuesCopy count];
    v7->_count = v8;
    v7->_inverted = inverted;
    v7->_controlPoints = malloc_type_malloc(8 * v8, 0x100004000313F17uLL);
    if (v7->_count >= 1)
    {
      v9 = 0;
      do
      {
        v10 = [valuesCopy objectAtIndex:v9];
        [v10 doubleValue];
        v7->_controlPoints[v9] = v11;

        ++v9;
      }

      while (v9 < v7->_count);
    }
  }

  return v7;
}

- (void)dealloc
{
  controlPoints = self->_controlPoints;
  if (controlPoints)
  {
    free(controlPoints);
  }

  v4.receiver = self;
  v4.super_class = GKTerraceNoiseModifier;
  [(GKTerraceNoiseModifier *)&v4 dealloc];
}

- (double)valueAt:(GKTerraceNoiseModifier *)self
{
  v15 = v2[1];
  v16 = *v2;
  v4 = [(NSMutableArray *)self->super._inputModules objectAtIndexedSubscript:0];
  v17[0] = v16;
  v17[1] = v15;
  [v4 valueAt:v17];
  v6 = v5;

  count = self->_count;
  if (!count)
  {
    return v6;
  }

  if (count == 1)
  {
    return *self->_controlPoints;
  }

  controlPoints = self->_controlPoints;
  result = *controlPoints;
  if (v6 > *controlPoints)
  {
    result = controlPoints[count - 1];
    if (v6 < result)
    {
      v10 = 1;
      if (count >= 2)
      {
        while (v6 >= controlPoints[v10])
        {
          if (count == ++v10)
          {
            LODWORD(v10) = self->_count;
            break;
          }
        }
      }

      if (count > v10 + 1)
      {
        v11 = v10 + 1;
      }

      else
      {
        v11 = count - 1;
      }

      if (v11 == v10)
      {
        return controlPoints[v10];
      }

      else
      {
        v12 = controlPoints[v10];
        v13 = v6 - v12;
        if (self->_inverted)
        {
          v14 = controlPoints[v11 & ~(v11 >> 31)];
        }

        else
        {
          v14 = controlPoints[v10];
        }

        if (self->_inverted)
        {
          v13 = 1.0 - (v6 - v12);
        }

        else
        {
          v12 = controlPoints[v11 & ~(v11 >> 31)];
        }

        return v14 * v14 + (v12 - v14 * v14) * v13;
      }
    }
  }

  return result;
}

- (id)cloneModule
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_count >= 1)
  {
    v4 = 0;
    do
    {
      v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:self->_controlPoints[v4]];
      [v3 addObject:v5];

      ++v4;
    }

    while (v4 < self->_count);
  }

  v6 = [[GKTerraceNoiseModifier alloc] initWithPeakInputValues:v3 terracesInverted:self->_inverted];

  return v6;
}

@end