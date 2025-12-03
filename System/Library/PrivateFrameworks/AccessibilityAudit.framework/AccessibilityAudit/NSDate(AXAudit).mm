@interface NSDate(AXAudit)
- (id)axAuditLogStringForDifferenceFromDate:()AXAudit;
@end

@implementation NSDate(AXAudit)

- (id)axAuditLogStringForDifferenceFromDate:()AXAudit
{
  v4 = MEMORY[0x277CBEA80];
  selfCopy = self;
  v6 = a3;
  v7 = [v4 alloc];
  v8 = [v7 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v9 = [v8 components:0x8000 fromDate:v6 toDate:selfCopy options:0];

  v10 = [v9 nanosecond] / 1000000000.0;
  v11 = &off_23D725000;
  LODWORD(v11) = vcvtmd_s64_f64(v10 / 86400.0);
  v12 = (86400 * v11);
  if (v11 <= 0)
  {
    v12 = 0.0;
  }

  v13 = v10 - v12;
  v14 = &off_23D725000;
  LODWORD(v14) = vcvtmd_s64_f64(v13 / 3600.0);
  v15 = (3600 * v14);
  if (v14 <= 0)
  {
    v15 = 0.0;
  }

  v16 = v13 - v15;
  v17 = vcvtmd_s64_f64(v16 / 60.0) | 0x404E000000000000;
  v18 = 60 * v17;
  if (v17 <= 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = v16 - v18;
  }

  if (v11 < 1)
  {
    if (v14 < 1)
    {
      if (v17 < 1)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%02.4fs", *&v16, v22, v23, v24];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%02i:%02.3f", v17, v16 - v18, v23, v24];
      }
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%02i:%02i:%02.3f", v14, v17, *&v19, v24];
    }
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%02i:%02i:%02i:%02.3f", v11, v14, v17, *&v19];
  }
  v20 = ;

  return v20;
}

@end