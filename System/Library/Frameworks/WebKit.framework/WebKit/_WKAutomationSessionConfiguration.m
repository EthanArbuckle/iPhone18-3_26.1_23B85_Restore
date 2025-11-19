@interface _WKAutomationSessionConfiguration
- (_WKAutomationSessionConfiguration)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _WKAutomationSessionConfiguration

- (_WKAutomationSessionConfiguration)init
{
  v3.receiver = self;
  v3.super_class = _WKAutomationSessionConfiguration;
  result = [(_WKAutomationSessionConfiguration *)&v3 init];
  if (result)
  {
    *&result->_acceptInsecureCertificates = 256;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setAcceptInsecureCertificates:{-[_WKAutomationSessionConfiguration acceptInsecureCertificates](self, "acceptInsecureCertificates")}];
  [v4 setAllowsInsecureMediaCapture:{-[_WKAutomationSessionConfiguration allowsInsecureMediaCapture](self, "allowsInsecureMediaCapture")}];
  [v4 setSuppressesICECandidateFiltering:{-[_WKAutomationSessionConfiguration suppressesICECandidateFiltering](self, "suppressesICECandidateFiltering")}];
  [v4 setAlwaysAllowAutoplay:{-[_WKAutomationSessionConfiguration alwaysAllowAutoplay](self, "alwaysAllowAutoplay")}];
  return v4;
}

@end