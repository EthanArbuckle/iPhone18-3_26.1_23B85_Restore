@interface MTROperationalCertificateChainIssuerShim
- (MTROperationalCertificateChainIssuerShim)initWithIssuer:(id)a3;
- (void)issueOperationalCertificateForRequest:(id)a3 attestationInfo:(id)a4 controller:(id)a5 completion:(id)a6;
@end

@implementation MTROperationalCertificateChainIssuerShim

- (MTROperationalCertificateChainIssuerShim)initWithIssuer:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MTROperationalCertificateChainIssuerShim;
  v6 = [(MTROperationalCertificateChainIssuerShim *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nocChainIssuer, a3);
    v7->_shouldSkipAttestationCertificateValidation = 1;
  }

  return v7;
}

- (void)issueOperationalCertificateForRequest:(id)a3 attestationInfo:(id)a4 controller:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v30 = v9;
  v31 = a6;
  v11 = [CSRInfo alloc];
  v12 = [v9 csrNonce];
  v13 = [v9 csrElementsTLV];
  v14 = [v9 attestationSignature];
  v15 = [v9 csr];
  v29 = [(CSRInfo *)v11 initWithNonce:v12 elements:v13 elementsSignature:v14 csr:v15];

  v16 = [v10 firmwareInfo];
  if (!v16)
  {
    v16 = [MEMORY[0x277CBEA90] data];
  }

  v32 = v16;
  v17 = self;
  v18 = [AttestationInfo alloc];
  v19 = [v10 challenge];
  v20 = [v10 nonce];
  v21 = [v10 elementsTLV];
  v22 = [v10 elementsSignature];
  v23 = [v10 deviceAttestationCertificate];
  v24 = [v10 productAttestationIntermediateCertificate];
  v25 = [v10 certificationDeclaration];
  v26 = [(AttestationInfo *)v18 initWithChallenge:v19 nonce:v20 elements:v21 elementsSignature:v22 dac:v23 pai:v24 certificationDeclaration:v25 firmwareInfo:v32];

  v27 = [(MTROperationalCertificateChainIssuerShim *)v17 nocChainIssuer];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = sub_238F3E9BC;
  v33[3] = &unk_278A730F0;
  v28 = v31;
  v34 = v28;
  [v27 onNOCChainGenerationNeeded:v29 attestationInfo:v26 onNOCChainGenerationComplete:v33];
}

@end