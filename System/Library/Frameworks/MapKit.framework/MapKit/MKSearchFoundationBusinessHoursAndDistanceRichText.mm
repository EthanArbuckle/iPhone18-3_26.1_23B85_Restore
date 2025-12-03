@interface MKSearchFoundationBusinessHoursAndDistanceRichText
- (BOOL)isRichTextResolved;
- (void)resolveBusinessHoursByMapItem:(id)item lines:(id)lines;
- (void)resolveDistanceNotFound;
- (void)resolveDistanceString:(id)string lines:(id)lines;
- (void)updateFormattedTextForLines:(id)lines;
@end

@implementation MKSearchFoundationBusinessHoursAndDistanceRichText

- (BOOL)isRichTextResolved
{
  isBusinessHoursResolved = [(MKSearchFoundationBusinessHoursAndDistanceRichText *)self isBusinessHoursResolved];
  if (isBusinessHoursResolved)
  {

    LOBYTE(isBusinessHoursResolved) = [(MKSearchFoundationBusinessHoursAndDistanceRichText *)self isDistanceResolved];
  }

  return isBusinessHoursResolved;
}

- (void)resolveDistanceNotFound
{
  [(MKSearchFoundationBusinessHoursAndDistanceRichText *)self setDistanceResolved:1];
  if ([(MKSearchFoundationBusinessHoursAndDistanceRichText *)self isRichTextResolved])
  {

    [(MKSearchFoundationRichText *)self setCompletionHandlers:0];
  }
}

- (void)resolveDistanceString:(id)string lines:(id)lines
{
  linesCopy = lines;
  stringCopy = string;
  if ([linesCopy count])
  {
    [linesCopy insertObject:stringCopy atIndex:0];
  }

  else
  {
    [linesCopy addObject:stringCopy];
  }

  [(MKSearchFoundationBusinessHoursAndDistanceRichText *)self setDistanceResolved:1];
  [(MKSearchFoundationBusinessHoursAndDistanceRichText *)self updateFormattedTextForLines:linesCopy];
}

- (void)updateFormattedTextForLines:(id)lines
{
  v23 = [MKSearchFoundationResult styledStringFromStringArray:lines];
  hoursString = [(MKSearchFoundationBusinessHoursAndDistanceRichText *)self hoursString];
  v5 = [hoursString length];

  if (v5)
  {
    hoursString2 = [(MKSearchFoundationBusinessHoursAndDistanceRichText *)self hoursString];
    v7 = [v23 rangeOfString:hoursString2];
    v9 = v8;

    v10 = objc_opt_new();
    v11 = [v23 substringToIndex:v7];
    if ([v11 length])
    {
      v12 = [MEMORY[0x1E69CA0F0] textWithString:v11];
      [v10 addObject:v12];
    }

    v13 = MEMORY[0x1E69CA0F0];
    hoursString3 = [(MKSearchFoundationBusinessHoursAndDistanceRichText *)self hoursString];
    v15 = [v13 textWithString:hoursString3];

    hoursColor = [(MKSearchFoundationBusinessHoursAndDistanceRichText *)self hoursColor];
    v17 = [MEMORY[0x1E69DC888] colorWithRed:0.949019611 green:0.286274523 blue:0.200000003 alpha:1.0];
    if ([hoursColor isEqual:v17])
    {
      [v15 setTextColor:1];
    }

    else
    {
      hoursColor2 = [(MKSearchFoundationBusinessHoursAndDistanceRichText *)self hoursColor];
      v19 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.568627477 blue:0.0 alpha:1.0];
      if ([hoursColor2 isEqual:v19])
      {
        v20 = 3;
      }

      else
      {
        v20 = 0;
      }

      [v15 setTextColor:v20];
    }

    [v10 addObject:v15];
    v21 = [v23 substringFromIndex:v7 + v9];
    if ([v21 length])
    {
      v22 = [MEMORY[0x1E69CA0F0] textWithString:v21];
      [v10 addObject:v22];
    }

    [(MKSearchFoundationRichText *)self setFormattedTextPieces:v10];
  }

  else
  {
    [(MKSearchFoundationRichText *)self setText:v23];
  }
}

- (void)resolveBusinessHoursByMapItem:(id)item lines:(id)lines
{
  itemCopy = item;
  linesCopy = lines;
  v8 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__MKSearchFoundationBusinessHoursAndDistanceRichText_resolveBusinessHoursByMapItem_lines___block_invoke;
  block[3] = &unk_1E76CCC28;
  v12 = itemCopy;
  selfCopy = self;
  v14 = linesCopy;
  v9 = linesCopy;
  v10 = itemCopy;
  dispatch_async(v8, block);
}

void __90__MKSearchFoundationBusinessHoursAndDistanceRichText_resolveBusinessHoursByMapItem_lines___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) _hasBusinessHours])
  {
    v3 = [[_MKLocalizedHoursBuilder alloc] initWithMapItem:*(a1 + 32) localizedHoursStringOptions:1];
    v4 = [(_MKLocalizedHoursBuilder *)v3 localizedOperatingHours];
    [*(a1 + 40) setHoursString:v4];

    v5 = [*(a1 + 40) hoursString];
    v6 = [v5 length];

    if (v6)
    {
      v7 = *(a1 + 48);
      v8 = [*(a1 + 40) hoursString];
      [v7 addObject:v8];

      v9 = [(_MKLocalizedHoursBuilder *)v3 hoursStateLabelColor];
      [*(a1 + 40) setHoursColor:v9];
    }
  }

  if ([*(a1 + 32) _hasPriceDescription])
  {
    v10 = [*(a1 + 32) _priceDescription];
    v11 = [v10 length];

    if (v11)
    {
      v12 = *(a1 + 48);
      v13 = [*(a1 + 32) _priceDescription];
LABEL_11:
      v18 = v13;
      [v12 addObject:v13];

      goto LABEL_12;
    }
  }

  v14 = [*(a1 + 32) _priceRangeString];
  if (v14)
  {
    v15 = v14;
    v16 = [*(a1 + 32) _priceRangeString];
    v17 = [v16 length];

    if (v17)
    {
      v12 = *(a1 + 48);
      v13 = [*(a1 + 32) _priceRangeString];
      goto LABEL_11;
    }
  }

LABEL_12:
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __90__MKSearchFoundationBusinessHoursAndDistanceRichText_resolveBusinessHoursByMapItem_lines___block_invoke_2;
  v20[3] = &unk_1E76CD810;
  v19 = *(a1 + 48);
  v20[4] = *(a1 + 40);
  v21 = v19;
  dispatch_async(MEMORY[0x1E69E96A0], v20);

  objc_autoreleasePoolPop(v2);
}

uint64_t __90__MKSearchFoundationBusinessHoursAndDistanceRichText_resolveBusinessHoursByMapItem_lines___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setBusinessHoursResolved:1];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 updateFormattedTextForLines:v3];
}

@end