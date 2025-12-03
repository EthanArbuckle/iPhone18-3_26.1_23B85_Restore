@interface _MKTransitInactiveLine
- (_MKTransitInactiveLine)initWithTransitLine:(id)line blocked:(BOOL)blocked serviceResumesDate:(id)date timeZone:(id)zone referenceDate:(id)referenceDate departuresSequence:(id)sequence;
@end

@implementation _MKTransitInactiveLine

- (_MKTransitInactiveLine)initWithTransitLine:(id)line blocked:(BOOL)blocked serviceResumesDate:(id)date timeZone:(id)zone referenceDate:(id)referenceDate departuresSequence:(id)sequence
{
  lineCopy = line;
  dateCopy = date;
  zoneCopy = zone;
  referenceDateCopy = referenceDate;
  sequenceCopy = sequence;
  v23.receiver = self;
  v23.super_class = _MKTransitInactiveLine;
  v18 = [(_MKTransitInactiveLine *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_line, line);
    v19->_blocked = blocked;
    objc_storeStrong(&v19->_serviceResumesDate, date);
    objc_storeStrong(&v19->_timeZone, zone);
    objc_storeStrong(&v19->_referenceDate, referenceDate);
    objc_storeStrong(&v19->_departuresSequence, sequence);
  }

  return v19;
}

@end