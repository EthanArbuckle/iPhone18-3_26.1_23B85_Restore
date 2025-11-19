@interface AXAuditObjectTransportInfoMasquerade
- (AXAuditObjectTransportInfoMasquerade)init;
- (void)_initializeBlocks;
@end

@implementation AXAuditObjectTransportInfoMasquerade

- (AXAuditObjectTransportInfoMasquerade)init
{
  v5.receiver = self;
  v5.super_class = AXAuditObjectTransportInfoMasquerade;
  v2 = [(AXAuditObjectTransportInfoMasquerade *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AXAuditObjectTransportInfo *)v2 setRequiresRawTransportDictionary:1];
    [(AXAuditObjectTransportInfoMasquerade *)v3 _initializeBlocks];
  }

  return v3;
}

- (void)_initializeBlocks
{
  objc_initWeak(&location, self);
  [(AXAuditObjectTransportInfo *)self setCanEncodeObjectBlock:&__block_literal_global_3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__AXAuditObjectTransportInfoMasquerade__initializeBlocks__block_invoke_2;
  v5[3] = &unk_278BE28C8;
  objc_copyWeak(&v6, &location);
  [(AXAuditObjectTransportInfo *)self setCreateLocalObjectBlock:v5];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__AXAuditObjectTransportInfoMasquerade__initializeBlocks__block_invoke_3;
  v3[3] = &unk_278BE28F0;
  objc_copyWeak(&v4, &location);
  [(AXAuditObjectTransportInfo *)self setCreateTransportObjectBlock:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __57__AXAuditObjectTransportInfoMasquerade__initializeBlocks__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained masqueradeTransportInfo];
  v6 = [v5 createLocalObjectBlock];
  v7 = (v6)[2](v6, v3);

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 createLocalObjectWithMasqueradeObjectBlock];
  v10 = (v9)[2](v9, v7);

  return v10;
}

id __57__AXAuditObjectTransportInfoMasquerade__initializeBlocks__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained createMasqueradeObjectBlock];
  v6 = (v5)[2](v5, v3);

  v7 = objc_loadWeakRetained((a1 + 32));
  v8 = [v7 masqueradeTransportInfo];
  v9 = [v8 createTransportObjectBlock];
  v10 = (v9)[2](v9, v6);

  return v10;
}

@end