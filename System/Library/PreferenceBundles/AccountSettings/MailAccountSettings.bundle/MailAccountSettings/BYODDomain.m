@interface BYODDomain
- (BYODDomain)initWithDictionary:(id)a3;
- (NSString)ef_publicDescription;
@end

@implementation BYODDomain

- (BYODDomain)initWithDictionary:(id)a3
{
  v4 = a3;
  v42.receiver = self;
  v42.super_class = BYODDomain;
  v5 = [(BYODDomain *)&v42 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isOwner"];
    v5->_isOwner = [v6 BOOLValue];

    v7 = [v4 objectForKeyedSubscript:@"isShared"];
    v5->_isShared = [v7 BOOLValue];

    v8 = [v4 objectForKeyedSubscript:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [v4 objectForKeyedSubscript:@"status"];
    status = v5->_status;
    v5->_status = v10;

    v12 = [v4 objectForKeyedSubscript:@"transferTimestamp"];
    v5->_transferTimestamp = [v12 integerValue];

    v13 = [BYODUser alloc];
    v14 = [v4 objectForKeyedSubscript:@"owner"];
    v15 = [(BYODUser *)v13 initWithDictionary:v14];
    owner = v5->_owner;
    v5->_owner = v15;

    v17 = [v4 objectForKeyedSubscript:@"dnsProviderName"];
    dnsProviderName = v5->_dnsProviderName;
    v5->_dnsProviderName = v17;

    v19 = [v4 objectForKeyedSubscript:@"dnsRecordsGenerated"];
    v5->_dnsRecordGenerated = [v19 BOOLValue];

    v20 = [v4 objectForKeyedSubscript:@"isDomainConnect"];
    v5->_isDomainConnect = [v20 BOOLValue];

    v21 = [v4 objectForKeyedSubscript:@"verificationStatus"];
    verificationStatus = v5->_verificationStatus;
    v5->_verificationStatus = v21;

    v23 = [v4 objectForKeyedSubscript:@"invitationStatus"];
    invitationStatus = v5->_invitationStatus;
    v5->_invitationStatus = v23;

    v25 = [v4 objectForKeyedSubscript:@"applyTemplateUrl"];
    applyTemplateUrl = v5->_applyTemplateUrl;
    v5->_applyTemplateUrl = v25;

    v27 = [v4 objectForKeyedSubscript:@"withFamily"];
    v5->_withFamily = [v27 BOOLValue];

    v28 = [v4 objectForKeyedSubscript:@"withEmailAddress"];
    v5->_withEmailAddress = [v28 BOOLValue];

    v29 = [v4 objectForKeyedSubscript:@"introScreenIndicator"];
    introScreenIndicator = v5->_introScreenIndicator;
    v5->_introScreenIndicator = v29;

    v31 = [v4 objectForKeyedSubscript:@"reverificationStatus"];
    reverificationStatus = v5->_reverificationStatus;
    v5->_reverificationStatus = v31;

    v33 = [v4 objectForKeyedSubscript:@"domainConnectServerUrl"];
    domainConnectServerUrl = v5->_domainConnectServerUrl;
    v5->_domainConnectServerUrl = v33;

    v35 = [v4 objectForKeyedSubscript:@"pendingVerifyEmailCount"];
    v5->_pendingVerifyEmailCount = [v35 integerValue];

    v36 = [v4 objectForKeyedSubscript:@"catchAllEnabled"];
    v5->_catchAllEnabled = [v36 BOOLValue];

    v37 = [v4 objectForKeyedSubscript:@"isDomainPurchased"];
    v5->_isDomainPurchased = [v37 BOOLValue];

    v38 = [v4 objectForKeyedSubscript:@"domainPurchaseProviderName"];
    domainPurchaseProviderName = v5->_domainPurchaseProviderName;
    v5->_domainPurchaseProviderName = v38;

    v40 = [v4 objectForKeyedSubscript:@"isDomainModeSet"];
    v5->_isDomainModeSet = [v40 BOOLValue];
  }

  return v5;
}

- (NSString)ef_publicDescription
{
  v3 = [(BYODDomain *)self isOwner];
  v4 = [(BYODDomain *)self isShared];
  v14 = [(BYODDomain *)self name];
  v13 = [(BYODDomain *)self dnsProviderName];
  v5 = [(BYODDomain *)self isDomainConnect];
  v12 = [(BYODDomain *)self status];
  v11 = [(BYODDomain *)self verificationStatus];
  v6 = [(BYODDomain *)self introScreenIndicator];
  v7 = [(BYODDomain *)self reverificationStatus];
  v8 = [(BYODDomain *)self domainConnectServerUrl];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"isOwner %d isShared %d domainName %@ dnsProviderName %@ isDomainConnect %d domainStatus %@ verificationStatus %@ introScreen %@ reverificationStatus %@ hasDomainConnectURL %d withEmail %d withFamily %d", v3, v4, v14, v13, v5, v12, v11, v6, v7, [v8 length] != 0, -[BYODDomain withEmailAddress](self, "withEmailAddress"), -[BYODDomain withFamily](self, "withFamily"));

  return v9;
}

@end