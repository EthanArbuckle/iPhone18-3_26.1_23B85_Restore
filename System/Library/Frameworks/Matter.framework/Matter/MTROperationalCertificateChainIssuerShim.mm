@interface MTROperationalCertificateChainIssuerShim
- (MTROperationalCertificateChainIssuerShim)initWithIssuer:(id)issuer;
- (void)issueOperationalCertificateForRequest:(id)request attestationInfo:(id)info controller:(id)controller completion:(id)completion;
@end

@implementation MTROperationalCertificateChainIssuerShim

- (MTROperationalCertificateChainIssuerShim)initWithIssuer:(id)issuer
{
  issuerCopy = issuer;
  v9.receiver = self;
  v9.super_class = MTROperationalCertificateChainIssuerShim;
  v6 = [(MTROperationalCertificateChainIssuerShim *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nocChainIssuer, issuer);
    v7->_shouldSkipAttestationCertificateValidation = 1;
  }

  return v7;
}

- (void)issueOperationalCertificateForRequest:(id)request attestationInfo:(id)info controller:(id)controller completion:(id)completion
{
  requestCopy = request;
  infoCopy = info;
  v30 = requestCopy;
  completionCopy = completion;
  v11 = [CSRInfo alloc];
  csrNonce = [requestCopy csrNonce];
  csrElementsTLV = [requestCopy csrElementsTLV];
  attestationSignature = [requestCopy attestationSignature];
  v15 = [requestCopy csr];
  v29 = [(CSRInfo *)v11 initWithNonce:csrNonce elements:csrElementsTLV elementsSignature:attestationSignature csr:v15];

  firmwareInfo = [infoCopy firmwareInfo];
  if (!firmwareInfo)
  {
    firmwareInfo = [MEMORY[0x277CBEA90] data];
  }

  v32 = firmwareInfo;
  selfCopy = self;
  v18 = [AttestationInfo alloc];
  challenge = [infoCopy challenge];
  nonce = [infoCopy nonce];
  elementsTLV = [infoCopy elementsTLV];
  elementsSignature = [infoCopy elementsSignature];
  deviceAttestationCertificate = [infoCopy deviceAttestationCertificate];
  productAttestationIntermediateCertificate = [infoCopy productAttestationIntermediateCertificate];
  certificationDeclaration = [infoCopy certificationDeclaration];
  v26 = [(AttestationInfo *)v18 initWithChallenge:challenge nonce:nonce elements:elementsTLV elementsSignature:elementsSignature dac:deviceAttestationCertificate pai:productAttestationIntermediateCertificate certificationDeclaration:certificationDeclaration firmwareInfo:v32];

  nocChainIssuer = [(MTROperationalCertificateChainIssuerShim *)selfCopy nocChainIssuer];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_238F3E9BC;
  v33[3] = &unk_278A730F0;
  v28 = completionCopy;
  v34 = v28;
  [nocChainIssuer onNOCChainGenerationNeeded:v29 attestationInfo:v26 onNOCChainGenerationComplete:v33];
}

@end