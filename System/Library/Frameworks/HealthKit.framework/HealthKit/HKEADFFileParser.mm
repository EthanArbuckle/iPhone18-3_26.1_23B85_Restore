@interface HKEADFFileParser
- (HKEADFFileParser)initWithData:(id)a3;
- (id)newBuilderWithStartDate:(id)a3;
- (id)payloadInRange:(_NSRange)a3;
- (void)_enumerateHeadersWithHandler:(id)a3;
- (void)enumerateChannelsWithHandler:(id)a3;
@end

@implementation HKEADFFileParser

- (HKEADFFileParser)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKEADFFileParser;
  v6 = [(HKEADFFileParser *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
  }

  return v7;
}

- (void)_enumerateHeadersWithHandler:(id)a3
{
  v5 = a3;
  v6 = 0;
  do
  {
    v7 = v6 + 12;
    v8 = [(HKEADFFileParser *)self data];
    v9 = [v8 length];

    if (v6 + 12 > v9)
    {
      break;
    }

    v14 = 0;
    v13 = 0;
    v10 = [(HKEADFFileParser *)self data];
    [v10 getBytes:&v13 range:{v6, 12}];

    v11 = HIDWORD(v13);
    v12 = 0;
    v3 = v3 & 0xFFFFFFFF00000000 | v14;
    v5[2](v5, v13, v3, v7, 4 * HIDWORD(v13), &v12);
    v6 = v7 + 4 * v11;
  }

  while (v12 != 1);
}

- (void)enumerateChannelsWithHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__HKEADFFileParser_enumerateChannelsWithHandler___block_invoke;
  v6[3] = &unk_1E7381808;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(HKEADFFileParser *)self _enumerateHeadersWithHandler:v6];
}

void __49__HKEADFFileParser_enumerateChannelsWithHandler___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (*&a3 <= 0.0)
  {
    v7 = 0;
  }

  else
  {
    v5 = +[HKUnit hertzUnit];
    v7 = [HKQuantity quantityWithUnit:v5 doubleValue:*&a3];
  }

  v6 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

- (id)payloadInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = [(HKEADFFileParser *)self data];
  v6 = [v5 subdataWithRange:{location, length}];

  return v6;
}

- (id)newBuilderWithStartDate:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__40;
  v26 = __Block_byref_object_dispose__40;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__40;
  v20 = __Block_byref_object_dispose__40;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__HKEADFFileParser_newBuilderWithStartDate___block_invoke;
  v15[3] = &unk_1E7381830;
  v15[4] = &v22;
  v15[5] = &v16;
  [(HKEADFFileParser *)self enumerateChannelsWithHandler:v15];
  v5 = v23[5];
  if (v5 && v17[5])
  {
    v6 = [v5 length];
    v7 = v6 >> 2;
    v8 = (&v15[-1] - ((4 * (v6 >> 2) + 15) & 0xFFFFFFFFFFFFFFF0));
    [v23[5] getBytes:v8 length:v6 & 0xFFFFFFFFFFFFFFFCLL];
    v9 = [HKElectrocardiogramBuilder alloc];
    v10 = [(HKElectrocardiogramBuilder *)v9 initWithStartDate:v4 frequency:v17[5]];
    if (v6 >= 4)
    {
      do
      {
        LODWORD(v11) = *v8;
        [(HKElectrocardiogramBuilder *)v10 addValue:1 lead:v11];
        ++v8;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

void __44__HKEADFFileParser_newBuilderWithStartDate___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = a6;
  if (a3 == 503)
  {
    v16 = v12;
    v13 = [a2 payloadInRange:{a4, a5}];
    v14 = *(*(a1 + 32) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a6);
    v12 = v16;
  }
}

@end