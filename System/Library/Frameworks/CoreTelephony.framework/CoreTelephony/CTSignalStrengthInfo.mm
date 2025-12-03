@interface CTSignalStrengthInfo
- (CTSignalStrengthInfo)initWithCoder:(id)coder;
- (NSString)ct_shortDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTSignalStrengthInfo

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  bars = [(CTSignalStrengthInfo *)self bars];
  [v3 appendFormat:@", bars=%@", bars];

  displayBars = [(CTSignalStrengthInfo *)self displayBars];
  [v3 appendFormat:@", displayBars=%@", displayBars];

  maxDisplayBars = [(CTSignalStrengthInfo *)self maxDisplayBars];
  [v3 appendFormat:@", maxDisplayBars=%@", maxDisplayBars];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  bars = [(CTSignalStrengthInfo *)self bars];
  v6 = [bars copy];
  [v4 setBars:v6];

  displayBars = [(CTSignalStrengthInfo *)self displayBars];
  v8 = [displayBars copy];
  [v4 setDisplayBars:v8];

  maxDisplayBars = [(CTSignalStrengthInfo *)self maxDisplayBars];
  v10 = [maxDisplayBars copy];
  [v4 setMaxDisplayBars:v10];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bars = [(CTSignalStrengthInfo *)self bars];
  [coderCopy encodeObject:bars forKey:@"bars"];

  displayBars = [(CTSignalStrengthInfo *)self displayBars];
  [coderCopy encodeObject:displayBars forKey:@"display_bars"];

  maxDisplayBars = [(CTSignalStrengthInfo *)self maxDisplayBars];
  [coderCopy encodeObject:maxDisplayBars forKey:@"max_display_bars"];
}

- (CTSignalStrengthInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CTSignalStrengthInfo;
  v5 = [(CTSignalStrengthInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bars"];
    bars = v5->_bars;
    v5->_bars = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"display_bars"];
    displayBars = v5->_displayBars;
    v5->_displayBars = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"max_display_bars"];
    maxDisplayBars = v5->_maxDisplayBars;
    v5->_maxDisplayBars = v10;
  }

  return v5;
}

- (NSString)ct_shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  ct_shortName = [(CTSignalStrengthInfo *)self ct_shortName];
  bars = [(CTSignalStrengthInfo *)self bars];
  displayBars = [(CTSignalStrengthInfo *)self displayBars];
  maxDisplayBars = [(CTSignalStrengthInfo *)self maxDisplayBars];
  v8 = [v3 stringWithFormat:@"<%@ b=%@, db=%@, mdb=%@>", ct_shortName, bars, displayBars, maxDisplayBars];

  return v8;
}

@end