@interface WKInterfaceMap
- (void)addAnnotation:(CLLocationCoordinate2D)annotation withImage:(id)image centerOffset:(CGPoint)offset;
- (void)addAnnotation:(CLLocationCoordinate2D)annotation withImageNamed:(id)named centerOffset:(CGPoint)offset;
- (void)addAnnotation:(CLLocationCoordinate2D)annotation withPinColor:(int64_t)color;
- (void)setRegion:(id *)region;
- (void)setVisibleMapRect:(id)rect;
@end

@implementation WKInterfaceMap

- (void)setVisibleMapRect:(id)rect
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v5 = rect.var0.var1;
  v13[4] = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:rect.var0.var0];
  v13[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  v13[1] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:var0];
  v13[2] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:var1];
  v13[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  [(WKInterfaceObject *)self _sendValueChanged:v11 forProperty:@"rect"];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setRegion:(id *)region
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v23[4] = *MEMORY[0x277D85DE8];
  if (fabs(v4) > 180.0 || fabs(v3) > 90.0 || v5 < 0.0 || v5 > 180.0 || v6 < 0.0 || v6 > 360.0)
  {
    v17 = MEMORY[0x277CCACA8];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%+.8f, %+.8f", *&v3, *&v4];
    v19 = [v17 stringWithFormat:@"<center:%@ span:%+.8f, %+.8f>", v18, *&v8, *&v7];

    v22 = [v17 stringWithFormat:@"Invalid Region %@", v19];

    v20 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v22 userInfo:0];
    [v20 raise];

    v21 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:region];
    v23[0] = v11;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    v23[1] = v12;
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    v23[2] = v13;
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
    v23[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
    [(WKInterfaceObject *)self _sendValueChanged:v15 forProperty:@"region"];

    v16 = *MEMORY[0x277D85DE8];
  }
}

- (void)addAnnotation:(CLLocationCoordinate2D)annotation withImage:(id)image centerOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  longitude = annotation.longitude;
  latitude = annotation.latitude;
  v17[4] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CCABB0];
  imageCopy = image;
  v12 = [v10 numberWithDouble:latitude];
  v17[0] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:longitude];
  v17[1] = v13;
  v17[2] = imageCopy;
  v14 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, y}];
  v17[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  [(WKInterfaceObject *)self _sendValueChanged:v15 forProperty:@"annotation"];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)addAnnotation:(CLLocationCoordinate2D)annotation withImageNamed:(id)named centerOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  longitude = annotation.longitude;
  latitude = annotation.latitude;
  v18[4] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CCABB0];
  namedCopy = named;
  v12 = [v10 numberWithDouble:latitude];
  v18[0] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:longitude];
  v18[1] = v13;
  v14 = [namedCopy copy];

  v18[2] = v14;
  v15 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, y}];
  v18[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
  [(WKInterfaceObject *)self _sendValueChanged:v16 forProperty:@"annotation"];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addAnnotation:(CLLocationCoordinate2D)annotation withPinColor:(int64_t)color
{
  longitude = annotation.longitude;
  v12[3] = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:annotation.latitude];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:{longitude, v7}];
  v12[1] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:color];
  v12[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  [(WKInterfaceObject *)self _sendValueChanged:v10 forProperty:@"annotation"];

  v11 = *MEMORY[0x277D85DE8];
}

@end