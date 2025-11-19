void sub_1000012C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000012E0(void *a1)
{
  v1 = qword_10000CB08;
  v2 = a1;
  if (v1 != -1)
  {
    sub_100003E0C();
  }

  v3 = [v2 isEqualToData:qword_10000CB10];

  return v3;
}

void *sub_100001338(void *a1, void *a2)
{
  v3 = a1;
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (!a2)
    {
      goto LABEL_9;
    }

    v14 = NSLocalizedDescriptionKey;
    v8 = [NSString stringWithFormat:@"secelemtoken: keyObjectID is of wrong type"];
    v15 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    *a2 = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:v9];
LABEL_7:

    a2 = 0;
    goto LABEL_8;
  }

  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v4, v5, v6, objc_opt_class(), 0];
  v8 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:v3 error:0];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a2)
    {
      goto LABEL_8;
    }

    v12 = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithFormat:@"secelemtoken: keyObjectID is of wrong type"];
    v13 = v9;
    v11 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    *a2 = [NSError errorWithDomain:TKErrorDomain code:-8 userInfo:v11];

    goto LABEL_7;
  }

  v8 = v8;
  a2 = v8;
LABEL_8:

LABEL_9:

  return a2;
}

void sub_1000022DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a54, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000235C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100002374(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 isEqual:kSecAttrKeyTypeECSECPrimeRandom];
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  return v5;
}

void sub_100002AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100002D7C(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v13 = off_10000CB40;
  v20 = off_10000CB40;
  if (!off_10000CB40)
  {
    v14 = sub_100003A48();
    v18[3] = dlsym(v14, "SESKeyExchange");
    off_10000CB40 = v18[3];
    v13 = v18[3];
  }

  _Block_object_dispose(&v17, 8);
  if (!v13)
  {
    sub_100003E98();
  }

  v15 = v13(v9, v10, v11, v12, a5);

  return v15;
}

void sub_100002EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000338C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000039AC(id a1)
{
  qword_10000CB10 = [NSData dataWithBytes:"com.apple.secelemtoken.casd" length:27];

  _objc_release_x1();
}

void *sub_1000039F8(uint64_t a1)
{
  v2 = sub_100003A48();
  result = dlsym(v2, "SESKeyDelete");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10000CB18 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100003A48()
{
  v2[0] = 0;
  if (!qword_10000CB20)
  {
    v2[1] = _NSConcreteStackBlock;
    v2[2] = 3221225472;
    v2[3] = sub_100003B40;
    v2[4] = &unk_100008420;
    v2[5] = v2;
    v3 = off_100008408;
    v4 = 0;
    qword_10000CB20 = _sl_dlopen();
  }

  v0 = qword_10000CB20;
  if (!qword_10000CB20)
  {
    sub_100004000(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t sub_100003B40(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10000CB20 = result;
  return result;
}

void *sub_100003BB4(uint64_t a1)
{
  v2 = sub_100003A48();
  result = dlsym(v2, "SESKeyCreate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10000CB28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100003C04(uint64_t a1)
{
  v2 = sub_100003A48();
  result = dlsym(v2, "SESKeyPublicKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10000CB30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100003C54(uint64_t a1)
{
  v2 = sub_100003A48();
  result = dlsym(v2, "SESKeySignData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10000CB38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100003CA4(uint64_t a1)
{
  v2 = sub_100003A48();
  result = dlsym(v2, "SESKeyExchange");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10000CB40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100003CF4(uint64_t a1)
{
  v2 = sub_100003A48();
  result = dlsym(v2, "SESKeyDecryptData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10000CB48 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100003D44(uint64_t a1)
{
  v2 = sub_100003A48();
  result = dlsym(v2, "SESKeyCreateSEBAASCertificate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_10000CB50 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100003D94()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"void soft_SESKeyDelete(NSData * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)"];
  [v0 handleFailureInFunction:v1 file:@"TKSecElemTokenSoftLinking.h" lineNumber:34 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_100003E20()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"NSData * _Nullable soft_SESKeySignData(NSData * _Nonnull __strong, NSData * _Nonnull __strong, NSString * _Nonnull __strong, NSData * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)"];
  [v0 handleFailureInFunction:v1 file:@"TKSecElemTokenSoftLinking.h" lineNumber:56 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_100003E98()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"NSData * _Nullable soft_SESKeyExchange(NSData * _Nonnull __strong, NSData * _Nonnull __strong, NSString * _Nonnull __strong, NSData * _Nonnull __strong, NSError * _Nullable __autoreleasing * _Nullable)"];
  [v0 handleFailureInFunction:v1 file:@"TKSecElemTokenSoftLinking.h" lineNumber:69 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_100003F10()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"NSData * _Nullable soft_SESKeyDecryptData(NSData * _Nonnull __strong, NSData * _Nonnull __strong, NSData * _Nonnull __strong, NSString * _Nonnull __strong, NSData * _Nonnull __strong, NSData * _Nullable __strong, NSData * _Nullable __strong, NSData * _Nullable __strong, NSError * _Nullable __autoreleasing * _Nullable)"];
  [v0 handleFailureInFunction:v1 file:@"TKSecElemTokenSoftLinking.h" lineNumber:102 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_100003F88()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"NSData * _Nullable soft_SESKeyCreateSEBAASCertificate(NSData * _Nonnull __strong, NSString * _Nonnull __strong, NSData * _Nullable __strong, NSArray<NSString *> * _Nullable __strong, NSError * _Nullable __autoreleasing * _Nullable)"];
  [v0 handleFailureInFunction:v1 file:@"TKSecElemTokenSoftLinking.h" lineNumber:115 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_100004000(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void * _Nonnull SEServiceLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"TKSecElemTokenSoftLinking.h" lineNumber:18 description:{@"%s", *a1}];

  __break(1u);
  CFRelease(v4);
}