@interface ACLSTypeVerifier
- (ACLSTypeVerifier)initWithTemplate:(id)template;
- (BOOL)verify:(id)verify name:(id)name withTemplate:(id)template tag:(unsigned int)tag;
- (id)sanitize:(id)sanitize withTemplate:(id)template tag:(unsigned int)tag;
@end

@implementation ACLSTypeVerifier

- (ACLSTypeVerifier)initWithTemplate:(id)template
{
  templateCopy = template;
  v8.receiver = self;
  v8.super_class = ACLSTypeVerifier;
  v5 = [(ACLSTypeVerifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ACLSTypeVerifier *)v5 setTemplate:templateCopy];
  }

  return v6;
}

- (BOOL)verify:(id)verify name:(id)name withTemplate:(id)template tag:(unsigned int)tag
{
  verifyCopy = verify;
  nameCopy = name;
  templateCopy = template;
  v13 = gLogHandle;
  if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEBUG))
  {
    sub_10001FA60(v13, nameCopy, tag);
  }

  if (!templateCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    sub_10001FB4C();
  }

  v14 = [templateCopy objectForKey:@"mandatory"];
  bOOLValue = [v14 BOOLValue];

  if (verifyCopy)
  {
    v16 = [templateCopy objectForKey:@"class"];
    if (!v16)
    {
      sub_10001FB20();
    }

    if (objc_opt_isKindOfClass())
    {
      if (v16 == objc_opt_class() || v16 == objc_opt_class())
      {
        *buf = 0;
        *v42 = buf;
        *&v42[8] = 0x2020000000;
        v42[16] = 1;
        v26 = [templateCopy objectForKey:@"template"];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_100001760;
        v36[3] = &unk_1000349F0;
        v36[4] = self;
        v37 = nameCopy;
        v27 = v26;
        tagCopy = tag;
        v38 = v27;
        v39 = buf;
        [verifyCopy enumerateObjectsUsingBlock:v36];
        v17 = *(*v42 + 24);
      }

      else
      {
        if (v16 != objc_opt_class() && v16 != objc_opt_class())
        {
          v17 = 1;
          goto LABEL_22;
        }

        *buf = 0;
        *v42 = buf;
        *&v42[8] = 0x2020000000;
        v42[16] = 1;
        v28 = [templateCopy objectForKey:@"template"];
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100001804;
        v30[3] = &unk_100034A18;
        v31 = verifyCopy;
        selfCopy = self;
        tagCopy2 = tag;
        v33 = nameCopy;
        v34 = buf;
        [v28 enumerateKeysAndObjectsUsingBlock:v30];
        v17 = *(*v42 + 24);
      }

      _Block_object_dispose(buf, 8);
      goto LABEL_22;
    }

    v20 = gLogHandle;
    v17 = 0;
    if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = currentQueueName();
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromClass(v16);
      *buf = 67110403;
      *&buf[4] = tag;
      *v42 = 2080;
      *&v42[2] = v22;
      *&v42[10] = 2112;
      *&v42[12] = nameCopy;
      v43 = 2112;
      v44 = v24;
      v45 = 2112;
      v46 = v25;
      v47 = 2113;
      v48 = verifyCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#%08x [%s] %@ has wrong type: %@; expected %@: %{private}@", buf, 0x3Au);

      v17 = 0;
    }
  }

  else
  {
    if (bOOLValue)
    {
      v18 = gLogHandle;
      if (os_log_type_enabled(gLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v18;
        *buf = 67109634;
        *&buf[4] = tag;
        *v42 = 2080;
        *&v42[2] = currentQueueName();
        *&v42[10] = 2112;
        *&v42[12] = nameCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#%08x [%s] %@ is missing", buf, 0x1Cu);
      }
    }

    v17 = bOOLValue ^ 1;
  }

LABEL_22:

  return v17;
}

- (id)sanitize:(id)sanitize withTemplate:(id)template tag:(unsigned int)tag
{
  sanitizeCopy = sanitize;
  templateCopy = template;
  v10 = templateCopy;
  if (sanitizeCopy && (v11 = [templateCopy objectForKey:@"class"], (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (v11 == objc_opt_class() || v11 == objc_opt_class())
    {
      v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [sanitizeCopy count]);
      [v10 objectForKey:@"template"];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100001B4C;
      v23[3] = &unk_100034A40;
      v24 = v23[4] = self;
      tagCopy = tag;
      v12 = v13;
      v25 = v12;
      v14 = v24;
      [sanitizeCopy enumerateObjectsUsingBlock:v23];
    }

    else if (v11 == objc_opt_class() || v11 == objc_opt_class())
    {
      v15 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [sanitizeCopy count]);
      v16 = [v10 objectForKey:@"template"];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_100001BB8;
      v18[3] = &unk_100034A68;
      v19 = sanitizeCopy;
      selfCopy = self;
      tagCopy2 = tag;
      v12 = v15;
      v21 = v12;
      [v16 enumerateKeysAndObjectsUsingBlock:v18];
    }

    else
    {
      v12 = sanitizeCopy;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end