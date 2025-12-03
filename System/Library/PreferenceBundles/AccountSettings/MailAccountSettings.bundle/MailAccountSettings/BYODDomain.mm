@interface BYODDomain
- (BYODDomain)initWithDictionary:(id)dictionary;
- (NSString)ef_publicDescription;
@end

@implementation BYODDomain

- (BYODDomain)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v42.receiver = self;
  v42.super_class = BYODDomain;
  v5 = [(BYODDomain *)&v42 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isOwner"];
    v5->_isOwner = [v6 BOOLValue];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isShared"];
    v5->_isShared = [v7 BOOLValue];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    status = v5->_status;
    v5->_status = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"transferTimestamp"];
    v5->_transferTimestamp = [v12 integerValue];

    v13 = [BYODUser alloc];
    v14 = [dictionaryCopy objectForKeyedSubscript:@"owner"];
    v15 = [(BYODUser *)v13 initWithDictionary:v14];
    owner = v5->_owner;
    v5->_owner = v15;

    v17 = [dictionaryCopy objectForKeyedSubscript:@"dnsProviderName"];
    dnsProviderName = v5->_dnsProviderName;
    v5->_dnsProviderName = v17;

    v19 = [dictionaryCopy objectForKeyedSubscript:@"dnsRecordsGenerated"];
    v5->_dnsRecordGenerated = [v19 BOOLValue];

    v20 = [dictionaryCopy objectForKeyedSubscript:@"isDomainConnect"];
    v5->_isDomainConnect = [v20 BOOLValue];

    v21 = [dictionaryCopy objectForKeyedSubscript:@"verificationStatus"];
    verificationStatus = v5->_verificationStatus;
    v5->_verificationStatus = v21;

    v23 = [dictionaryCopy objectForKeyedSubscript:@"invitationStatus"];
    invitationStatus = v5->_invitationStatus;
    v5->_invitationStatus = v23;

    v25 = [dictionaryCopy objectForKeyedSubscript:@"applyTemplateUrl"];
    applyTemplateUrl = v5->_applyTemplateUrl;
    v5->_applyTemplateUrl = v25;

    v27 = [dictionaryCopy objectForKeyedSubscript:@"withFamily"];
    v5->_withFamily = [v27 BOOLValue];

    v28 = [dictionaryCopy objectForKeyedSubscript:@"withEmailAddress"];
    v5->_withEmailAddress = [v28 BOOLValue];

    v29 = [dictionaryCopy objectForKeyedSubscript:@"introScreenIndicator"];
    introScreenIndicator = v5->_introScreenIndicator;
    v5->_introScreenIndicator = v29;

    v31 = [dictionaryCopy objectForKeyedSubscript:@"reverificationStatus"];
    reverificationStatus = v5->_reverificationStatus;
    v5->_reverificationStatus = v31;

    v33 = [dictionaryCopy objectForKeyedSubscript:@"domainConnectServerUrl"];
    domainConnectServerUrl = v5->_domainConnectServerUrl;
    v5->_domainConnectServerUrl = v33;

    v35 = [dictionaryCopy objectForKeyedSubscript:@"pendingVerifyEmailCount"];
    v5->_pendingVerifyEmailCount = [v35 integerValue];

    v36 = [dictionaryCopy objectForKeyedSubscript:@"catchAllEnabled"];
    v5->_catchAllEnabled = [v36 BOOLValue];

    v37 = [dictionaryCopy objectForKeyedSubscript:@"isDomainPurchased"];
    v5->_isDomainPurchased = [v37 BOOLValue];

    v38 = [dictionaryCopy objectForKeyedSubscript:@"domainPurchaseProviderName"];
    domainPurchaseProviderName = v5->_domainPurchaseProviderName;
    v5->_domainPurchaseProviderName = v38;

    v40 = [dictionaryCopy objectForKeyedSubscript:@"isDomainModeSet"];
    v5->_isDomainModeSet = [v40 BOOLValue];
  }

  return v5;
}

- (NSString)ef_publicDescription
{
  isOwner = [(BYODDomain *)self isOwner];
  isShared = [(BYODDomain *)self isShared];
  name = [(BYODDomain *)self name];
  dnsProviderName = [(BYODDomain *)self dnsProviderName];
  isDomainConnect = [(BYODDomain *)self isDomainConnect];
  status = [(BYODDomain *)self status];
  verificationStatus = [(BYODDomain *)self verificationStatus];
  introScreenIndicator = [(BYODDomain *)self introScreenIndicator];
  reverificationStatus = [(BYODDomain *)self reverificationStatus];
  domainConnectServerUrl = [(BYODDomain *)self domainConnectServerUrl];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"isOwner %d isShared %d domainName %@ dnsProviderName %@ isDomainConnect %d domainStatus %@ verificationStatus %@ introScreen %@ reverificationStatus %@ hasDomainConnectURL %d withEmail %d withFamily %d", isOwner, isShared, name, dnsProviderName, isDomainConnect, status, verificationStatus, introScreenIndicator, reverificationStatus, [domainConnectServerUrl length] != 0, -[BYODDomain withEmailAddress](self, "withEmailAddress"), -[BYODDomain withFamily](self, "withFamily"));

  return v9;
}

@end