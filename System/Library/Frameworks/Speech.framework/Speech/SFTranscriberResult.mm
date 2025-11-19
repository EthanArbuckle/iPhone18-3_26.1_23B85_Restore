@interface SFTranscriberResult
- ($105C7F46451D331BD7843CF46B2B4F94)range;
- (SFTranscriberResult)initWithRange:(id *)a3 contextualizedTranscriberMultisegmentResult:(id)a4;
- (SFTranscriberResult)initWithRange:(id *)a3 normalizedTranscriberMultisegmentResult:(id)a4 contextualizedTranscriberMultisegmentResult:(id)a5;
- (SFTranscriberResult)initWithRange:(id *)a3 normalizedTranscriberSingleSegmentResult:(id)a4 contextualizedTranscriberSingleSegmentResult:(id)a5;
@end

@implementation SFTranscriberResult

- ($105C7F46451D331BD7843CF46B2B4F94)range
{
  v3 = *&self[1].var0.var1;
  *&retstr->var0.var0 = *&self->var1.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var0;
  return self;
}

- (SFTranscriberResult)initWithRange:(id *)a3 contextualizedTranscriberMultisegmentResult:(id)a4
{
  v12.receiver = self;
  v12.super_class = SFTranscriberResult;
  v5 = a4;
  v6 = [(SFTranscriberResult *)&v12 init];
  v8 = *&a3->var0.var3;
  v7 = *&a3->var1.var1;
  *(v6 + 40) = *&a3->var0.var0;
  *(v6 + 56) = v8;
  *(v6 + 72) = v7;
  v9 = [v5 copy];

  v10 = *(v6 + 2);
  *(v6 + 2) = v9;

  return v6;
}

- (SFTranscriberResult)initWithRange:(id *)a3 normalizedTranscriberSingleSegmentResult:(id)a4 contextualizedTranscriberSingleSegmentResult:(id)a5
{
  v17.receiver = self;
  v17.super_class = SFTranscriberResult;
  v7 = a5;
  v8 = a4;
  v9 = [(SFTranscriberResult *)&v17 init];
  v11 = *&a3->var0.var3;
  v10 = *&a3->var1.var1;
  *(v9 + 40) = *&a3->var0.var0;
  *(v9 + 56) = v11;
  *(v9 + 72) = v10;
  v12 = [v8 copy];

  v13 = *(v9 + 3);
  *(v9 + 3) = v12;

  v14 = [v7 copy];
  v15 = *(v9 + 4);
  *(v9 + 4) = v14;

  return v9;
}

- (SFTranscriberResult)initWithRange:(id *)a3 normalizedTranscriberMultisegmentResult:(id)a4 contextualizedTranscriberMultisegmentResult:(id)a5
{
  v17.receiver = self;
  v17.super_class = SFTranscriberResult;
  v7 = a5;
  v8 = a4;
  v9 = [(SFTranscriberResult *)&v17 init];
  v11 = *&a3->var0.var3;
  v10 = *&a3->var1.var1;
  *(v9 + 40) = *&a3->var0.var0;
  *(v9 + 56) = v11;
  *(v9 + 72) = v10;
  v12 = [v8 copy];

  v13 = *(v9 + 1);
  *(v9 + 1) = v12;

  v14 = [v7 copy];
  v15 = *(v9 + 2);
  *(v9 + 2) = v14;

  return v9;
}

@end