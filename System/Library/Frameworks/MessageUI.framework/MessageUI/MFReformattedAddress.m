@interface MFReformattedAddress
- (MFReformattedAddress)initWithAddress:(id)a3;
- (NSString)domainPart;
- (NSString)localPart;
- (_NSRange)middleTruncationRange;
- (double)widthWithFontSize:(double)a3 maximumWidth:(double)a4 options:(unint64_t)a5;
- (id)attributedStringWithFontSize:(double)a3 maximumWidth:(double)a4 options:(unint64_t)a5;
- (id)description;
@end

@implementation MFReformattedAddress

- (MFReformattedAddress)initWithAddress:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MFReformattedAddress;
  v5 = [(MFReformattedAddress *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    address = v5->_address;
    v5->_address = v6;

    [(MFReformattedAddress *)v5 setMiddleTruncationRange:0x7FFFFFFFFFFFFFFFLL, 0];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  address = self->_address;
  v7 = [(MFReformattedAddress *)self middleTruncationRange];
  v9 = [(NSString *)address mf_substringTruncatedInRange:v7, v8];
  v10 = [v3 stringWithFormat:@"<%@: %p: %@ (%@)>", v5, self, address, v9];

  return v10;
}

- (NSString)localPart
{
  v2 = [(NSString *)self->_address componentsSeparatedByString:@"@"];
  v3 = [v2 objectAtIndex:0];

  return v3;
}

- (NSString)domainPart
{
  v2 = [(NSString *)self->_address componentsSeparatedByString:@"@"];
  v3 = [v2 objectAtIndex:0];

  return v3;
}

- (double)widthWithFontSize:(double)a3 maximumWidth:(double)a4 options:(unint64_t)a5
{
  v5 = [(MFReformattedAddress *)self attributedStringWithFontSize:a5 maximumWidth:a3 options:a4];
  [v5 size];
  v7 = v6;

  return v7;
}

- (id)attributedStringWithFontSize:(double)a3 maximumWidth:(double)a4 options:(unint64_t)a5
{
  v5 = a5;
  v43[1] = *MEMORY[0x1E69E9840];
  v9 = self->_address;
  v10 = [(MFReformattedAddress *)self middleTruncationRange];
  v12 = [(NSString *)v9 mf_substringTruncatedInRange:v10, v11];

  v13 = objc_alloc(MEMORY[0x1E696AD40]);
  v42 = *MEMORY[0x1E69DB648];
  v14 = [MEMORY[0x1E69DB878] systemFontOfSize:a3];
  v43[0] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
  v16 = [v13 initWithString:v12 attributes:v15];

  [v16 size];
  v18 = v17 > a4;
  if ((v5 & 1) == 0 && v17 > a4)
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __74__MFReformattedAddress_attributedStringWithFontSize_maximumWidth_options___block_invoke;
    v39[3] = &unk_1E806C700;
    v19 = v16;
    v40 = v19;
    v41 = a4;
    v20 = MFFirstIndexInRangePassingTest(0, 9uLL, v39);
    v18 = v20 == 0x7FFFFFFFFFFFFFFFLL;
    if (v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v19 mf_removeAttribute:*MEMORY[0x1E69DB660]];
    }

    else
    {
      v21 = v20 * -0.100000001;
      *&v21 = v21;
      v22 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
      [v19 mf_addAttribute:*MEMORY[0x1E69DB660] value:v22];
    }
  }

  if ((v5 & 2) == 0 && v18)
  {
    v23 = [v16 string];
    v24 = [v23 copy];

    v25 = [v24 length] - 1;
    v32 = MEMORY[0x1E69E9820];
    v33 = 3221225472;
    v34 = __74__MFReformattedAddress_attributedStringWithFontSize_maximumWidth_options___block_invoke_2;
    v35 = &unk_1E806C610;
    v26 = v24;
    v36 = v26;
    v27 = v16;
    v37 = v27;
    v38 = a4;
    v28 = MFLastIndexPassingTest(v25, &v32);
    if (v28 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v27 mf_setString:{v26, v32, v33, v34, v35, v36}];
    }

    else
    {
      v29 = [v26 mf_substringTruncatedToIndex:{v28, v32, v33, v34, v35, v36}];
      [v27 mf_setString:v29];
    }
  }

  if ((MFAddressHasSafeDomain(self->_address) & 1) == 0)
  {
    v30 = [MEMORY[0x1E69DC888] systemRedColor];
    [v16 mf_addAttribute:*MEMORY[0x1E69DB650] value:v30];
  }

  return v16;
}

BOOL __74__MFReformattedAddress_attributedStringWithFontSize_maximumWidth_options___block_invoke(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E69DB660];
  v5 = a2 * -0.100000001;
  *&v5 = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [v3 mf_addAttribute:v4 value:v6];

  [*(a1 + 32) size];
  return v7 <= *(a1 + 40);
}

BOOL __74__MFReformattedAddress_attributedStringWithFontSize_maximumWidth_options___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) mf_substringTruncatedToIndex:a2];
  [*(a1 + 40) mf_setString:v3];
  [*(a1 + 40) size];
  v5 = v4 <= *(a1 + 48);

  return v5;
}

- (_NSRange)middleTruncationRange
{
  length = self->_middleTruncationRange.length;
  location = self->_middleTruncationRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end