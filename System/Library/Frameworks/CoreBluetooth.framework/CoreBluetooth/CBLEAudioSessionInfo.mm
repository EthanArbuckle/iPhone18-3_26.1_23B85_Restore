@interface CBLEAudioSessionInfo
- (CBLEAudioSessionInfo)initWithInfo:(id)info withSessionId:(id)id withState:(int64_t)state withCoordIds:(id)ids withLocation:(id)location;
- (CBLEAudioSessionInfo)initWithSession:(id)session;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CBLEAudioSessionInfo

- (CBLEAudioSessionInfo)initWithSession:(id)session
{
  sessionCopy = session;
  v10.receiver = self;
  v10.super_class = CBLEAudioSessionInfo;
  v6 = [(CBLEAudioSessionInfo *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_audioSessionIdentifier, session);
    v8 = v7;
  }

  return v7;
}

- (CBLEAudioSessionInfo)initWithInfo:(id)info withSessionId:(id)id withState:(int64_t)state withCoordIds:(id)ids withLocation:(id)location
{
  infoCopy = info;
  idCopy = id;
  idsCopy = ids;
  locationCopy = location;
  v21.receiver = self;
  v21.super_class = CBLEAudioSessionInfo;
  v17 = [(CBLEAudioSessionInfo *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_coordinatedSetInfo, info);
    objc_storeStrong(&v18->_audioSessionIdentifier, id);
    v18->_sessionState = state;
    objc_storeStrong(&v18->_connectedIdentifiers, ids);
    objc_storeStrong(&v18->_locations, location);
    v19 = v18;
  }

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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