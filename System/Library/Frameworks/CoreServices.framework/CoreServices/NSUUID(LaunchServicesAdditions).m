@interface NSUUID(LaunchServicesAdditions)
+ (id)_LS_UUIDWithData:()LaunchServicesAdditions digestType:;
+ (id)_LS_nullUUID;
@end

@implementation NSUUID(LaunchServicesAdditions)

+ (id)_LS_nullUUID
{
  v4 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  v0 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uu];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

+ (id)_LS_UUIDWithData:()LaunchServicesAdditions digestType:
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  *v25 = 0uLL;
  if (!v5 || ![v5 bytes] || !objc_msgSend(v6, "length"))
  {
    v11 = [MEMORY[0x1E696AFB0] _LS_nullUUID];
    goto LABEL_14;
  }

  switch(a4)
  {
    case 2:
      v18 = v6;
      v19 = v6;
      v20 = [v19 bytes];
      v21 = [v19 length];

      CC_MD5(v20, v21, v25);
      v16 = v25[6];
      v17 = 48;
      goto LABEL_12;
    case 1:
      v12 = v6;
      v13 = v6;
      v14 = [v13 bytes];
      v15 = [v13 length];

      CC_SHA1(v14, v15, md);
      goto LABEL_10;
    case 0:
      v7 = v6;
      v8 = v6;
      v9 = [v8 bytes];
      v10 = [v8 length];

      CC_SHA256(v9, v10, md);
LABEL_10:
      *v25 = *md;
      v16 = md[6];
      v17 = 80;
LABEL_12:
      v25[6] = v17 & 0xF0 | v16 & 0xF;
      v25[8] = v25[8] & 0x3F | 0x80;
      break;
  }

  v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v25];
LABEL_14:
  v22 = v11;

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

@end