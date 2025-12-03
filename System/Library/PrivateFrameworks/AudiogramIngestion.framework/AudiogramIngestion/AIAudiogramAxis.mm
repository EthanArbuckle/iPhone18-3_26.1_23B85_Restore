@interface AIAudiogramAxis
- (AIAudiogramAxis)initWithAxis:(unint64_t)axis values:(id)values;
- (AIRecognizedText)maxValue;
- (AIRecognizedText)minValue;
- (BOOL)isEqual:(id)equal;
- (id)description;
@end

@implementation AIAudiogramAxis

- (AIAudiogramAxis)initWithAxis:(unint64_t)axis values:(id)values
{
  valuesCopy = values;
  v10.receiver = self;
  v10.super_class = AIAudiogramAxis;
  v7 = [(AIAudiogramAxis *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(AIAudiogramAxis *)v7 setAxis:axis];
    [(AIAudiogramAxis *)v8 setValues:valuesCopy];
  }

  return v8;
}

- (AIRecognizedText)minValue
{
  values = [(AIAudiogramAxis *)self values];
  firstObject = [values firstObject];

  return firstObject;
}

- (AIRecognizedText)maxValue
{
  values = [(AIAudiogramAxis *)self values];
  lastObject = [values lastObject];

  return lastObject;
}

- (id)description
{
  axis = [(AIAudiogramAxis *)self axis];
  v4 = @"y";
  if (!axis)
  {
    v4 = @"x";
  }

  v5 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = AIAudiogramAxis;
  v6 = v4;
  v7 = [(AIAudiogramAxis *)&v11 description];
  values = [(AIAudiogramAxis *)self values];
  v9 = [v5 stringWithFormat:@"%@ (%@ axis) %@", v7, v6, values];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__4;
    v22 = __Block_byref_object_dispose__4;
    v23 = equalCopy;
    axis = [(AIAudiogramAxis *)self axis];
    if (axis == [v19[5] axis] && (-[AIAudiogramAxis values](self, "values"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), objc_msgSend(v19[5], "values"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v6, v7 == v9))
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 1;
      values = [(AIAudiogramAxis *)self values];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __27__AIAudiogramAxis_isEqual___block_invoke;
      v13[3] = &unk_278CECC78;
      v13[4] = &v18;
      v13[5] = &v14;
      [values enumerateObjectsUsingBlock:v13];

      v11 = *(v15 + 24);
      _Block_object_dispose(&v14, 8);
    }

    else
    {
      v11 = 0;
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void __27__AIAudiogramAxis_isEqual___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(*(*(a1 + 32) + 8) + 40);
  v8 = a2;
  v9 = [v7 values];
  v10 = [v9 objectAtIndex:a3];

  if (v10 != v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

@end