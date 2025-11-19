@interface AVOutputDeviceAuthorizedPeer
- (AVOutputDeviceAuthorizedPeer)initWithID:(id)a3 publicKey:(id)a4 hasAdministratorPrivileges:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation AVOutputDeviceAuthorizedPeer

- (void)dealloc
{
  ivars = self->_ivars;
  if (ivars)
  {

    ivars = self->_ivars;
  }

  v4.receiver = self;
  v4.super_class = AVOutputDeviceAuthorizedPeer;
  [(AVOutputDeviceAuthorizedPeer *)&v4 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objc_msgSend(a3 "peerID")];
    if (v5)
    {
      v5 = [objc_msgSend(a3 "publicKey")];
      if (v5)
      {
        v6 = [a3 hasAdministratorPrivileges];
        LOBYTE(v5) = v6 ^ [(AVOutputDeviceAuthorizedPeer *)self hasAdministratorPrivileges]^ 1;
      }
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)[(AVOutputDeviceAuthorizedPeer *)self peerID] hash];
  v4 = [(NSData *)[(AVOutputDeviceAuthorizedPeer *)self publicKey] hash]^ v3;
  return v4 ^ [(AVOutputDeviceAuthorizedPeer *)self hasAdministratorPrivileges];
}

- (AVOutputDeviceAuthorizedPeer)initWithID:(id)a3 publicKey:(id)a4 hasAdministratorPrivileges:(BOOL)a5
{
  v14.receiver = self;
  v14.super_class = AVOutputDeviceAuthorizedPeer;
  v8 = [(AVOutputDeviceAuthorizedPeer *)&v14 init];
  v9 = objc_alloc_init(AVOutputDeviceAuthorizedPeerInternal);
  v8->_ivars = v9;
  if (v9 && (OUTLINED_FUNCTION_5_1([a3 copy]), v10) && (v8->_ivars->publicKey = objc_msgSend(a4, "copy"), ivars = v8->_ivars, ivars->publicKey))
  {
    ivars->isAdmin = a5;
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end