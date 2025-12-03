@interface MDLUtility
+ (void)convertToUSDZ:(id)z writeToURL:(id)l;
@end

@implementation MDLUtility

+ (void)convertToUSDZ:(id)z writeToURL:(id)l
{
  zCopy = z;
  lCopy = l;
  sub_239E566C0();
  *v24 = 0u;
  v25 = 0u;
  *v23 = 0u;
  v9 = objc_msgSend_path(zCopy, v7, v8);
  v10 = v9;
  v13 = objc_msgSend_UTF8String(v10, v11, v12);
  sub_239E552A0(__p, v13);
  MEMORY[0x23EE7E5B0](v23, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v16 = objc_msgSend_path(lCopy, v14, v15);
  v17 = v16;
  v20 = objc_msgSend_UTF8String(v17, v18, v19);
  sub_239E552A0(__p, v20);
  pxrInternal__aapl__pxrReserved__::UsdUtilsCreateNewARKitUsdzPackage();
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[1]);
  }

  if (SHIBYTE(v24[0]) < 0)
  {
    operator delete(v23[0]);
  }
}

@end