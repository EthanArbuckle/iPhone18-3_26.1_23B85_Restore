@interface AIAudiogramAxis
- (AIAudiogramAxis)initWithAxis:(unint64_t)a3 values:(id)a4;
- (AIRecognizedText)maxValue;
- (AIRecognizedText)minValue;
- (BOOL)isEqual:(id)a3;
- (id)description;
@end

@implementation AIAudiogramAxis

- (AIAudiogramAxis)initWithAxis:(unint64_t)a3 values:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = AIAudiogramAxis;
  v7 = [(AIAudiogramAxis *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(AIAudiogramAxis *)v7 setAxis:a3];
    [(AIAudiogramAxis *)v8 setValues:v6];
  }

  return v8;
}

- (AIRecognizedText)minValue
{
  v2 = [(AIAudiogramAxis *)self values];
  v3 = [v2 firstObject];

  return v3;
}

- (AIRecognizedText)maxValue
{
  v2 = [(AIAudiogramAxis *)self values];
  v3 = [v2 lastObject];

  return v3;
}

- (id)description
{
  v3 = [(AIAudiogramAxis *)self axis];
  v4 = @"y";
  if (!v3)
  {
    v4 = @"x";
  }

  v5 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = AIAudiogramAxis;
  v6 = v4;
  v7 = [(AIAudiogramAxis *)&v11 description];
  v8 = [(AIAudiogramAxis *)self values];
  v9 = [v5 stringWithFormat:@"%@ (%@ axis) %@", v7, v6, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__4;
    v22 = __Block_byref_object_dispose__4;
    v23 = v4;
    v5 = [(AIAudiogramAxis *)self axis];
    if (v5 == [v19[5] axis] && (-[AIAudiogramAxis values](self, "values"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), objc_msgSend(v19[5], "values"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v6, v7 == v9))
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2020000000;
      v17 = 1;
      v10 = [(AIAudiogramAxis *)self values];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __27__AIAudiogramAxis_isEqual___block_invoke;
      v13[3] = &unk_278CECC78;
      v13[4] = &v18;
      v13[5] = &v14;
      [v10 enumerateObjectsUsingBlock:v13];

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