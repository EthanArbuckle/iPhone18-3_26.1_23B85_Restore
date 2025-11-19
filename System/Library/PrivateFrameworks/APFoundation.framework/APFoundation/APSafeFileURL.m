@interface APSafeFileURL
- (APSafeFileURL)initWithString:(id)a3;
- (id)URLByAppendingPathComponent:(id)a3;
- (id)description;
- (id)initFileURLWithPath:(id)a3 relativeToURL:(id)a4;
@end

@implementation APSafeFileURL

- (id)description
{
  safeDescription = self->_safeDescription;
  if (safeDescription)
  {
    v6 = safeDescription;
  }

  else
  {
    v6 = objc_msgSend_lastPathComponent(self, a2, v2, v3);
  }

  v10 = v6;
  if (objc_msgSend_isAppleInternalInstall(APSystemInternal, v7, v8, v9))
  {
    v14 = objc_msgSend_path(self, v11, v12, v13);

    v10 = v14;
  }

  return v10;
}

- (id)initFileURLWithPath:(id)a3 relativeToURL:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = APSafeFileURL;
  v8 = [(APSafeFileURL *)&v11 initWithString:v7 relativeToURL:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_safeDescription, a3);
  }

  return v9;
}

- (APSafeFileURL)initWithString:(id)a3
{
  v4.receiver = self;
  v4.super_class = APSafeFileURL;
  return [(APSafeFileURL *)&v4 initWithString:a3];
}

- (id)URLByAppendingPathComponent:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_path(self, v5, v6, v7);
  v11 = objc_msgSend_stringByAppendingPathComponent_(v8, v9, v4, v10);

  v12 = [APSafeFileURL alloc];
  inited = objc_msgSend_initFileURLWithPath_(v12, v13, v11, v14);
  v18 = inited;
  if (inited)
  {
    objc_msgSend_setSafeDescription_(inited, v16, v4, v17);
  }

  return v18;
}

@end