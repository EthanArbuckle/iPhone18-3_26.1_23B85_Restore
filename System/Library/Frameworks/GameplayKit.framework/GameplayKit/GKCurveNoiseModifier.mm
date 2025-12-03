@interface GKCurveNoiseModifier
- (GKCurveNoiseModifier)init;
- (GKCurveNoiseModifier)initWithControlPoints:(id)points;
- (GKCurveNoiseModifier)initWithInputModuleCount:(unint64_t)count;
- (double)valueAt:(GKCurveNoiseModifier *)self;
- (id)cloneModule;
- (void)dealloc;
@end

@implementation GKCurveNoiseModifier

- (GKCurveNoiseModifier)init
{
  v8[4] = *MEMORY[0x277D85DE8];
  v7[0] = &unk_284B58770;
  v7[1] = &unk_284B58790;
  v8[0] = &unk_284B58770;
  v8[1] = &unk_284B58790;
  v7[2] = &unk_284B587A0;
  v7[3] = &unk_284B58780;
  v8[2] = &unk_284B587A0;
  v8[3] = &unk_284B58780;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v4 = [(GKCurveNoiseModifier *)self initWithControlPoints:v3];

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (GKCurveNoiseModifier)initWithInputModuleCount:(unint64_t)count
{
  v9[4] = *MEMORY[0x277D85DE8];
  v8[0] = &unk_284B58770;
  v8[1] = &unk_284B58790;
  v9[0] = &unk_284B58770;
  v9[1] = &unk_284B58790;
  v8[2] = &unk_284B587A0;
  v8[3] = &unk_284B58780;
  v9[2] = &unk_284B587A0;
  v9[3] = &unk_284B58780;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];
  v5 = [(GKCurveNoiseModifier *)self initWithControlPoints:v4];

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (GKCurveNoiseModifier)initWithControlPoints:(id)points
{
  v23 = *MEMORY[0x277D85DE8];
  pointsCopy = points;
  v21.receiver = self;
  v21.super_class = GKCurveNoiseModifier;
  v5 = [(GKNoiseModifier *)&v21 initWithInputModuleCount:1];
  if (v5)
  {
    if (pointsCopy && [pointsCopy count])
    {
      v6 = [pointsCopy count];
      v5->_count = v6;
      v5->_controlPoints = malloc_type_malloc(8 * v6, 0x100004000313F17uLL);
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = pointsCopy;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v8)
      {
        v9 = *v18;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v18 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v17 + 1) + 8 * i);
            v12 = [v7 valueForKey:{v11, v17}];
            [v12 doubleValue];
            *v5->_controlPoints = v13;
            [v11 doubleValue];
            *v5->_parameters = v14;
          }

          v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
        }

        while (v8);
      }
    }

    else
    {
      v5->_controlPoints = 0;
      v5->_count = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  controlPoints = self->_controlPoints;
  if (controlPoints)
  {
    free(controlPoints);
  }

  parameters = self->_parameters;
  if (parameters)
  {
    free(parameters);
  }

  v5.receiver = self;
  v5.super_class = GKCurveNoiseModifier;
  [(GKCurveNoiseModifier *)&v5 dealloc];
}

- (double)valueAt:(GKCurveNoiseModifier *)self
{
  v28 = v2[1];
  v29 = *v2;
  v4 = [(NSMutableArray *)self->super._inputModules objectAtIndexedSubscript:0];
  v30[0] = v29;
  v30[1] = v28;
  [v4 valueAt:v30];
  v6 = v5;

  count = self->_count;
  if (!count)
  {
    return v6;
  }

  v8 = count - 1;
  if (count == 1)
  {
    return *self->_controlPoints;
  }

  parameters = self->_parameters;
  v10 = *parameters;
  if (v6 <= *parameters)
  {
    return *self->_controlPoints;
  }

  v11 = count;
  if (v6 >= parameters[v11 - 1])
  {
    return self->_controlPoints[v11 - 1];
  }

  if (count == 2)
  {
    return (self->_controlPoints[1] - *self->_controlPoints) * (v6 - v10) / (parameters[1] - v10) + *self->_controlPoints;
  }

  if (count == 3)
  {
    v21 = (v6 - v10) / (parameters[1] - v10);
    controlPoints = self->_controlPoints;
    return *controlPoints + (controlPoints[1] - *controlPoints + -(controlPoints[2] - controlPoints[1] - (controlPoints[2] - controlPoints[1]) * v21) * v21) * v21;
  }

  if (count != 4)
  {
    if (count < 2)
    {
      LODWORD(v23) = 1;
    }

    else
    {
      v23 = 1;
      while (v6 >= self->_controlPoints[v23])
      {
        if (count == ++v23)
        {
          v24 = v8 & ~(v8 >> 31);
          LODWORD(v23) = self->_count;
          goto LABEL_27;
        }
      }
    }

    if (v8 >= v23)
    {
      v8 = v23;
    }

    v24 = v8 & ~(v8 >> 31);
    if (v23 < count)
    {
      return self->_controlPoints[v24];
    }

LABEL_27:
    if (count + 1 < v23)
    {
      v25 = count + 1;
    }

    else
    {
      v25 = v23;
    }

    v26 = v25 & ~(v25 >> 31);
    if (count <= 2)
    {
      LODWORD(count) = 2;
    }

    v14 = v6 - parameters[v24];
    v27 = self->_controlPoints;
    v16 = v27[count - 2];
    v17 = v27[v24];
    v18 = v27[v23];
    v19 = v27[v26];
    return v17 + (v18 - v16 + (v16 - v17 - (v19 - (v18 + v16 - v17)) + (v19 - (v18 + v16 - v17)) * v14) * v14) * v14;
  }

  v12 = parameters[1];
  if (v6 <= v12)
  {
    return self->_controlPoints[1];
  }

  v13 = parameters[2];
  if (v6 < v13)
  {
    v14 = (v6 - v12) / (v13 - v12);
    v15 = self->_controlPoints;
    v16 = *v15;
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    return v17 + (v18 - v16 + (v16 - v17 - (v19 - (v18 + v16 - v17)) + (v19 - (v18 + v16 - v17)) * v14) * v14) * v14;
  }

  return self->_controlPoints[2];
}

- (id)cloneModule
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_count >= 1)
  {
    v4 = 0;
    do
    {
      v5 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:self->_controlPoints[v4]];
      v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:self->_parameters[v4]];
      [v3 setObject:v5 forKeyedSubscript:v6];

      ++v4;
    }

    while (v4 < self->_count);
  }

  v7 = [[GKCurveNoiseModifier alloc] initWithControlPoints:v3];

  return v7;
}

@end