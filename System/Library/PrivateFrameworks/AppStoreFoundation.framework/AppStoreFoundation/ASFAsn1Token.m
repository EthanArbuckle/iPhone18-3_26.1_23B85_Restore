@interface ASFAsn1Token
+ (ASFAsn1OSToken)readTokenFromBuffer:(char)a3 opaque:(void *)a4 length:;
+ (id)readTokenFromBuffer:(void *)a3 length:;
@end

@implementation ASFAsn1Token

+ (ASFAsn1OSToken)readTokenFromBuffer:(char)a3 opaque:(void *)a4 length:
{
  v5 = a2;
  objc_opt_self();
  v47 = 0;
  v46 = 0;
  v6 = v5;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v48.receiver = MEMORY[0x277D85DD0];
  v48.super_class = 3221225472;
  v49 = __readIdentifier_block_invoke;
  v50 = &unk_278C962A0;
  v51 = &v54;
  v52 = &v47;
  v53 = &v46;
  [v6 enumerateByteRangesUsingBlock:&v48];
  v7 = v55[3];
  _Block_object_dispose(&v54, 8);

  v8 = v46;
  v9 = [v6 length];
  v10 = [v6 subdataWithRange:{v8, v9 - v46}];

  v11 = v10;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v48.receiver = MEMORY[0x277D85DD0];
  v48.super_class = 3221225472;
  v49 = __readLength_block_invoke;
  v50 = &unk_278C962C8;
  v51 = &v54;
  v52 = &v46;
  [v11 enumerateByteRangesUsingBlock:&v48];
  v12 = v55[3];
  _Block_object_dispose(&v54, 8);

  v13 = [v11 length];
  v14 = v46;
  if (v12 >= v13 - v46)
  {
    v15 = v13 - v46;
  }

  else
  {
    v15 = v12;
  }

  v16 = [v11 subdataWithRange:{v46, v15}];

  if (a4)
  {
    *a4 = v14 + v8 + v15;
  }

  if (v47)
  {
    goto LABEL_7;
  }

  if (v7 == 2)
  {
    v24 = [ASFAsn1IntegerToken alloc];
    v34 = v47;
    v26 = v16;
    if (v24)
    {
      v48.receiver = v24;
      v48.super_class = ASFAsn1IntegerToken;
      v35 = objc_msgSendSuper2(&v48, sel_init);
      v24 = v35;
      if (!v34)
      {
        if (v35)
        {
          v35->super.mClass = 0;
          v35->super.mIdentifier = 2;
          v39 = [v26 length];
          if (v39 >= 8)
          {
            v40 = 8;
          }

          else
          {
            v40 = v39;
          }

          v41 = [v26 subdataWithRange:{0, v40}];
          mData = v24->super.mData;
          v24->super.mData = v41;

          v24->mValue = 0;
          [(NSData *)v24->super.mData getBytes:&v24->mValue length:8];
          v24->mValue = bswap64(v24->mValue) >> (-8 * v40);
        }

        goto LABEL_32;
      }
    }

LABEL_23:
    v21 = 0;
LABEL_33:

    goto LABEL_38;
  }

  if (v7 != 4)
  {
    if (v7 != 17)
    {
LABEL_7:
      v17 = [ASFAsn1Token alloc];
      v18 = v47;
      v19 = v16;
      if (v17)
      {
        v48.receiver = v17;
        v48.super_class = ASFAsn1Token;
        v20 = objc_msgSendSuper2(&v48, sel_init);
        v21 = v20;
        if (v20)
        {
          v20->super.mClass = v18;
          v20->super.mIdentifier = v7;
          v22 = [v19 copy];
          v23 = v21->super.mData;
          v21->super.mData = v22;
        }
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_38;
    }

    v24 = [ASFAsn1SetToken alloc];
    v25 = v47;
    v26 = v16;
    if (v24)
    {
      v48.receiver = v24;
      v48.super_class = ASFAsn1SetToken;
      v27 = objc_msgSendSuper2(&v48, sel_init);
      v24 = v27;
      if (!v25)
      {
        if (v27)
        {
          v27->super.mClass = 0;
          v27->super.mIdentifier = 17;
          v28 = [v26 copy];
          v29 = v24->super.mData;
          v24->super.mData = v28;

          objc_storeStrong(&v24->mValue, v24->super.mData);
        }

LABEL_32:
        v24 = v24;
        v21 = v24;
        goto LABEL_33;
      }
    }

    goto LABEL_23;
  }

  v21 = [ASFAsn1OSToken alloc];
  v30 = v47;
  v31 = v16;
  if (v21)
  {
    v48.receiver = v21;
    v48.super_class = ASFAsn1OSToken;
    v32 = objc_msgSendSuper2(&v48, sel_init);
    v33 = v32;
    if (v30)
    {
      v21 = 0;
    }

    else
    {
      if (v32)
      {
        v32->super.mClass = 0;
        v32->super.mIdentifier = 4;
        v36 = [v31 copy];
        v37 = v33->super.mData;
        v33->super.mData = v36;

        if (a3)
        {
          v38 = 0;
        }

        else
        {
          v38 = [ASFAsn1Token readTokenFromBuffer:0 length:?];
        }

        mValue = v33->mValue;
        v33->mValue = v38;
      }

      v33 = v33;
      v21 = v33;
    }
  }

  else
  {
    v33 = 0;
  }

LABEL_38:

  return v21;
}

+ (id)readTokenFromBuffer:(void *)a3 length:
{
  v4 = a2;
  objc_opt_self();
  v5 = [ASFAsn1Token readTokenFromBuffer:v4 opaque:0 length:a3];

  return v5;
}

@end