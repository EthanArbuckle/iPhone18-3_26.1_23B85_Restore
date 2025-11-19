@interface NCLocationUpdateDemoDelegate
- (id)startLocationUpdatesWithHandler:(id)a3;
@end

@implementation NCLocationUpdateDemoDelegate

- (id)startLocationUpdatesWithHandler:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_tokenWithValue_(NCManagerLocationToken, v5, self->_locationToken, v6);
  ++self->_locationToken;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_23BD3CEBC;
  v10[3] = &unk_278B94398;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v10);

  return v7;
}

@end