@interface CTSignalStrengthInfo
- (CTSignalStrengthInfo)initWithCoder:(id)a3;
- (NSString)ct_shortDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTSignalStrengthInfo

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTSignalStrengthInfo *)self bars];
  [v3 appendFormat:@", bars=%@", v4];

  v5 = [(CTSignalStrengthInfo *)self displayBars];
  [v3 appendFormat:@", displayBars=%@", v5];

  v6 = [(CTSignalStrengthInfo *)self maxDisplayBars];
  [v3 appendFormat:@", maxDisplayBars=%@", v6];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTSignalStrengthInfo *)self bars];
  v6 = [v5 copy];
  [v4 setBars:v6];

  v7 = [(CTSignalStrengthInfo *)self displayBars];
  v8 = [v7 copy];
  [v4 setDisplayBars:v8];

  v9 = [(CTSignalStrengthInfo *)self maxDisplayBars];
  v10 = [v9 copy];
  [v4 setMaxDisplayBars:v10];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CTSignalStrengthInfo *)self bars];
  [v4 encodeObject:v5 forKey:@"bars"];

  v6 = [(CTSignalStrengthInfo *)self displayBars];
  [v4 encodeObject:v6 forKey:@"display_bars"];

  v7 = [(CTSignalStrengthInfo *)self maxDisplayBars];
  [v4 encodeObject:v7 forKey:@"max_display_bars"];
}

- (CTSignalStrengthInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CTSignalStrengthInfo;
  v5 = [(CTSignalStrengthInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bars"];
    bars = v5->_bars;
    v5->_bars = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"display_bars"];
    displayBars = v5->_displayBars;
    v5->_displayBars = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"max_display_bars"];
    maxDisplayBars = v5->_maxDisplayBars;
    v5->_maxDisplayBars = v10;
  }

  return v5;
}

- (NSString)ct_shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CTSignalStrengthInfo *)self ct_shortName];
  v5 = [(CTSignalStrengthInfo *)self bars];
  v6 = [(CTSignalStrengthInfo *)self displayBars];
  v7 = [(CTSignalStrengthInfo *)self maxDisplayBars];
  v8 = [v3 stringWithFormat:@"<%@ b=%@, db=%@, mdb=%@>", v4, v5, v6, v7];

  return v8;
}

@end