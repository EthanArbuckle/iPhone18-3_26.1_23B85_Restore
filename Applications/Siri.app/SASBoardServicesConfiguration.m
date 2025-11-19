@interface SASBoardServicesConfiguration
+ (id)configuration;
- (id)_init;
- (id)domainForService:(int64_t)a3;
- (id)identifierForService:(int64_t)a3;
@end

@implementation SASBoardServicesConfiguration

- (id)_init
{
  v5.receiver = self;
  v5.super_class = SASBoardServicesConfiguration;
  v2 = [(SASBoardServicesConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SASBoardServicesConfiguration *)v2 setMachServiceIdentifier:@"com.apple.siri.activation.service"];
    [(SASBoardServicesConfiguration *)v3 setPresentationDomain:@"com.apple.siri.activation"];
    [(SASBoardServicesConfiguration *)v3 setPresentationIdentifier:@"com.apple.siri.activation.presentation"];
    [(SASBoardServicesConfiguration *)v3 setSignalDomain:@"com.apple.siri.activation"];
    [(SASBoardServicesConfiguration *)v3 setSignalIdentifier:@"com.apple.siri.activation.signal"];
  }

  return v3;
}

+ (id)configuration
{
  if (qword_10018F220 != -1)
  {
    sub_1000CF3AC();
  }

  v3 = qword_10018F218;

  return v3;
}

- (id)domainForService:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(SASBoardServicesConfiguration *)self signalDomain];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v3 = [(SASBoardServicesConfiguration *)self presentationDomain];
  }

  a2 = v3;
LABEL_6:

  return a2;
}

- (id)identifierForService:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(SASBoardServicesConfiguration *)self signalIdentifier];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v3 = [(SASBoardServicesConfiguration *)self presentationIdentifier];
  }

  a2 = v3;
LABEL_6:

  return a2;
}

@end