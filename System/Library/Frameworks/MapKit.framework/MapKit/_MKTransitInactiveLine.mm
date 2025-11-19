@interface _MKTransitInactiveLine
- (_MKTransitInactiveLine)initWithTransitLine:(id)a3 blocked:(BOOL)a4 serviceResumesDate:(id)a5 timeZone:(id)a6 referenceDate:(id)a7 departuresSequence:(id)a8;
@end

@implementation _MKTransitInactiveLine

- (_MKTransitInactiveLine)initWithTransitLine:(id)a3 blocked:(BOOL)a4 serviceResumesDate:(id)a5 timeZone:(id)a6 referenceDate:(id)a7 departuresSequence:(id)a8
{
  v22 = a3;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = _MKTransitInactiveLine;
  v18 = [(_MKTransitInactiveLine *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_line, a3);
    v19->_blocked = a4;
    objc_storeStrong(&v19->_serviceResumesDate, a5);
    objc_storeStrong(&v19->_timeZone, a6);
    objc_storeStrong(&v19->_referenceDate, a7);
    objc_storeStrong(&v19->_departuresSequence, a8);
  }

  return v19;
}

@end