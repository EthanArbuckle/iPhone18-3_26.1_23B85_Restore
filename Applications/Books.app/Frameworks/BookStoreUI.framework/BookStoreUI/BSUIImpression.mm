@interface BSUIImpression
- (BSUIImpression)initWithImpression:(id)a3;
- (NSDictionary)size;
- (id)timingAtIndex:(unint64_t)a3;
@end

@implementation BSUIImpression

- (BSUIImpression)initWithImpression:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BSUIImpression;
  v6 = [(BSUIImpression *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impression, a3);
  }

  return v7;
}

- (NSDictionary)size
{
  v8[0] = @"width";
  [(TUIImpression *)self->_impression size];
  v3 = [NSNumber numberWithDouble:?];
  v8[1] = @"height";
  v9[0] = v3;
  [(TUIImpression *)self->_impression size];
  v5 = [NSNumber numberWithDouble:v4];
  v9[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

- (id)timingAtIndex:(unint64_t)a3
{
  [(TUIImpression *)self->_impression timingAtIndex:a3];
  v4 = v3;
  v10[0] = @"startTime";
  v6 = [NSNumber numberWithDouble:(v5 + 978307200.0) * 1000.0];
  v10[1] = @"endTime";
  v11[0] = v6;
  v7 = [NSNumber numberWithDouble:(v4 + 978307200.0) * 1000.0];
  v11[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

@end