@interface SRKeyboardProbabilityMetric
- (BOOL)isEqual:(id)a3;
- (NSArray)distributionSampleValues;
- (SRKeyboardProbabilityMetric)init;
- (SRKeyboardProbabilityMetric)initWithCoder:(id)a3;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRKeyboardProbabilityMetric

- (SRKeyboardProbabilityMetric)init
{
  v4.receiver = self;
  v4.super_class = SRKeyboardProbabilityMetric;
  v2 = [(SRKeyboardProbabilityMetric *)&v4 init];
  if (v2)
  {
    v2->_mutableSampleValues = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v2;
}

- (NSArray)distributionSampleValues
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self->_unitType)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableArray count](self->_mutableSampleValues, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  mutableSampleValues = self->_mutableSampleValues;
  v5 = [(NSMutableArray *)mutableSampleValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(mutableSampleValues);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = objc_alloc(MEMORY[0x1E696AD28]);
        [v9 doubleValue];
        v11 = [v10 initWithDoubleValue:self->_unitType unit:?];
        [v3 addObject:v11];
      }

      v6 = [(NSMutableArray *)mutableSampleValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  result = [MEMORY[0x1E695DEC8] arrayWithArray:v3];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  [(SRKeyboardProbabilityMetric *)self setMutableSampleValues:0];
  [(SRKeyboardProbabilityMetric *)self setUnitType:0];
  v3.receiver = self;
  v3.super_class = SRKeyboardProbabilityMetric;
  [(SRKeyboardProbabilityMetric *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  mutableSampleValues = self->_mutableSampleValues;
  v6 = [a3 mutableSampleValues];

  return [(NSMutableArray *)mutableSampleValues isEqual:v6];
}

- (SRKeyboardProbabilityMetric)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v10.receiver = self;
  v10.super_class = SRKeyboardProbabilityMetric;
  v6 = [(SRKeyboardProbabilityMetric *)&v10 init];
  if (v6)
  {
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v6->_mutableSampleValues = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, objc_opt_class(), 0), @"SampleValues", "mutableCopy"}];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  mutableSampleValues = self->_mutableSampleValues;

  [a3 encodeObject:mutableSampleValues forKey:@"SampleValues"];
}

- (id)sr_dictionaryRepresentation
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"Values";
  v5[1] = @"Units";
  v6[0] = [(SRKeyboardProbabilityMetric *)self mutableSampleValues];
  v6[1] = [(NSUnit *)[(SRKeyboardProbabilityMetric *)self unitType] symbol];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

@end