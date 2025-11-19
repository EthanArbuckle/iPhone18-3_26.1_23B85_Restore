@interface CBLEAudioSessionInfo
- (CBLEAudioSessionInfo)initWithInfo:(id)a3 withSessionId:(id)a4 withState:(int64_t)a5 withCoordIds:(id)a6 withLocation:(id)a7;
- (CBLEAudioSessionInfo)initWithSession:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CBLEAudioSessionInfo

- (CBLEAudioSessionInfo)initWithSession:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CBLEAudioSessionInfo;
  v6 = [(CBLEAudioSessionInfo *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioSessionIdentifier, a3);
    v8 = v7;
  }

  return v7;
}

- (CBLEAudioSessionInfo)initWithInfo:(id)a3 withSessionId:(id)a4 withState:(int64_t)a5 withCoordIds:(id)a6 withLocation:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = CBLEAudioSessionInfo;
  v17 = [(CBLEAudioSessionInfo *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_coordinatedSetInfo, a3);
    objc_storeStrong(&v18->_audioSessionIdentifier, a4);
    v18->_sessionState = a5;
    objc_storeStrong(&v18->_connectedIdentifiers, a6);
    objc_storeStrong(&v18->_locations, a7);
    v19 = v18;
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CBCoordinatedSetInfo *)self->_coordinatedSetInfo copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSUUID *)self->_audioSessionIdentifier copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSMutableArray *)self->_connectedIdentifiers copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSMutableDictionary *)self->_locations copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end