@interface AddExceptionTask
- (AddExceptionTask)initWithUUID:(id)d type:(int64_t)type title:(id)title message:(id)message bundleIdentifier:(id)identifier adamID:(id)iD distributorID:(id)distributorID ageRatingValue:(id)self0 preApprove:(id)self1 postApprove:(id)self2 preDecline:(id)self3 postDecline:(id)self4 metadata:(id)self5 responseBundleIdentifier:(id)self6;
- (id)perform;
@end

@implementation AddExceptionTask

- (AddExceptionTask)initWithUUID:(id)d type:(int64_t)type title:(id)title message:(id)message bundleIdentifier:(id)identifier adamID:(id)iD distributorID:(id)distributorID ageRatingValue:(id)self0 preApprove:(id)self1 postApprove:(id)self2 preDecline:(id)self3 postDecline:(id)self4 metadata:(id)self5 responseBundleIdentifier:(id)self6
{
  dCopy = d;
  titleCopy = title;
  titleCopy2 = title;
  messageCopy = message;
  identifierCopy = identifier;
  identifierCopy2 = identifier;
  iDCopy = iD;
  distributorIDCopy = distributorID;
  valueCopy = value;
  approveCopy = approve;
  postApproveCopy = postApprove;
  declineCopy = decline;
  postDeclineCopy = postDecline;
  metadataCopy = metadata;
  bundleIdentifierCopy = bundleIdentifier;
  v41.receiver = self;
  v41.super_class = AddExceptionTask;
  v23 = [(AddExceptionTask *)&v41 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_bundleIdentifier, identifierCopy);
    objc_storeStrong(&v24->_adamID, iD);
    objc_storeStrong(&v24->_metadata, metadata);
    objc_storeStrong(&v24->_distributorID, distributorID);
    objc_storeStrong(&v24->_ageRatingValue, value);
    objc_storeStrong(&v24->_UUID, d);
    v24->_type = type;
    objc_storeStrong(&v24->_message, message);
    objc_storeStrong(&v24->_preApprove, approve);
    objc_storeStrong(&v24->_postApprove, postApprove);
    objc_storeStrong(&v24->_preDecline, decline);
    objc_storeStrong(&v24->_postDecline, postDecline);
    objc_storeStrong(&v24->_responseBundleIdentifier, bundleIdentifier);
    objc_storeStrong(&v24->_title, titleCopy);
  }

  return v24;
}

- (id)perform
{
  v3 = objc_alloc_init(AMSMutableBinaryPromise);
  v4 = +[APLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = objc_opt_class();
    v6 = v16;
    _os_log_impl(&_mh_execute_header, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetching active iCloud account, so we can check existing ST Exceptions", buf, 0xCu);
  }

  v7 = +[ACAccountStore ams_sharedAccountStore];
  ams_fetchActiveiCloudAccount = [v7 ams_fetchActiveiCloudAccount];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000048FC;
  v13[3] = &unk_100054D20;
  v13[4] = self;
  v9 = v3;
  v14 = v9;
  [ams_fetchActiveiCloudAccount addFinishBlock:v13];
  v10 = v14;
  v11 = v9;

  return v9;
}

@end