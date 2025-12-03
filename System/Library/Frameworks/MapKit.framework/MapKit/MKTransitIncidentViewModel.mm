@interface MKTransitIncidentViewModel
- (BOOL)isEqual:(id)equal;
- (NSString)symbolName;
- (UIColor)backgroundColor;
- (UIColor)symbolColor;
@end

@implementation MKTransitIncidentViewModel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    symbolName = [(MKTransitIncidentViewModel *)self symbolName];
    symbolName2 = [v5 symbolName];
    v8 = symbolName;
    v9 = symbolName2;
    if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
    {
      LOBYTE(v17) = 0;
    }

    else
    {
      message = [(MKTransitIncidentViewModel *)self message];
      message2 = [v5 message];
      v13 = message;
      v14 = message2;
      if ((!(v13 | v14) || (v15 = [v13 isEqual:v14], v14, v13, v15)) && (v16 = -[MKTransitIncidentViewModel isBlocking](self, "isBlocking"), v16 == objc_msgSend(v5, "isBlocking")))
      {
        showImage = [(MKTransitIncidentViewModel *)self showImage];
        v17 = showImage ^ [v5 showImage] ^ 1;
      }

      else
      {
        LOBYTE(v17) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  return v17;
}

- (UIColor)symbolColor
{
  if ([(MKTransitIncidentViewModel *)self isBlocking])
  {
    [MEMORY[0x1E69DC888] systemRedColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemYellowColor];
  }
  v2 = ;

  return v2;
}

- (NSString)symbolName
{
  if (![(MKTransitIncidentViewModel *)self showImage])
  {
    return 0;
  }

  if (MapKitIdiomIsMacCatalyst())
  {
    return @"info.circle.fill";
  }

  if ([(MKTransitIncidentViewModel *)self isBlocking])
  {
    return @"minus.circle.fill";
  }

  return @"exclamationmark.circle.fill";
}

- (UIColor)backgroundColor
{
  if ([(MKTransitIncidentViewModel *)self isBlocking])
  {
    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
    v3 = systemRedColor;
    v4 = 0.150000006;
  }

  else
  {
    systemRedColor = [MEMORY[0x1E69DC888] systemYellowColor];
    v3 = systemRedColor;
    v4 = 0.200000003;
  }

  v5 = [systemRedColor colorWithAlphaComponent:v4];

  v6 = objc_alloc(MEMORY[0x1E69DC888]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45__MKTransitIncidentViewModel_backgroundColor__block_invoke;
  v10[3] = &unk_1E76CCCD0;
  v11 = v5;
  v7 = v5;
  v8 = [v6 initWithDynamicProvider:v10];

  return v8;
}

id __45__MKTransitIncidentViewModel_backgroundColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    v3 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return v3;
}

@end