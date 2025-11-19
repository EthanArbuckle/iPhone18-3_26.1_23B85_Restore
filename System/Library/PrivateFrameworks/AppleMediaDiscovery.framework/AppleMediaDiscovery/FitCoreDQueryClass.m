@interface FitCoreDQueryClass
- (BOOL)persistFitnessDataWithFitnessTablesData:(id)a3 error:(id *)a4;
- (NSArray)allFitnessTables;
- (NSDictionary)tableUpdateSummary;
- (void)fetchCatalogMetadataWithCompletionHandler:(id)a3;
- (void)filterFitcoreDCatalogDebugWithCatalogFilterConfig:(NSDictionary *)a3 completionHandler:(id)a4;
- (void)filterFitcoreDCatalogWithCatalogFilterConfig:(NSDictionary *)a3 completionHandler:(id)a4;
- (void)queryWorkoutReferencesWithWorkoutQueryConfig:(NSDictionary *)a3 completionHandler:(id)a4;
- (void)runBootstrapCatalogSyncWithBootstrapCatalogSyncConfig:(NSDictionary *)a3 completionHandler:(id)a4;
- (void)setAllFitnessTables:(id)a3;
- (void)setTableUpdateSummary:(id)a3;
@end

@implementation FitCoreDQueryClass

- (NSDictionary)tableUpdateSummary
{
  MEMORY[0x277D82BE0](self);
  sub_240D8262C();
  MEMORY[0x277D82BD8](self);
  v4 = sub_240DADC74();

  return v4;
}

- (void)setTableUpdateSummary:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  v4 = sub_240DADC84();
  sub_240D8272C(v4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

- (NSArray)allFitnessTables
{
  MEMORY[0x277D82BE0](self);
  sub_240D828E8();
  MEMORY[0x277D82BD8](self);
  v4 = sub_240DADE44();

  return v4;
}

- (void)setAllFitnessTables:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  v4 = sub_240DADE54();
  sub_240D829D4(v4);
  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

- (void)filterFitcoreDCatalogWithCatalogFilterConfig:(NSDictionary *)a3 completionHandler:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  v7 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self);
  v4 = swift_allocObject();
  v4[2] = a3;
  v4[3] = v7;
  v4[4] = self;
  sub_240D80444(&unk_240DB2980, v4);
}

- (void)queryWorkoutReferencesWithWorkoutQueryConfig:(NSDictionary *)a3 completionHandler:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  v7 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self);
  v4 = swift_allocObject();
  v4[2] = a3;
  v4[3] = v7;
  v4[4] = self;
  sub_240D80444(&unk_240DB29C0, v4);
}

- (void)filterFitcoreDCatalogDebugWithCatalogFilterConfig:(NSDictionary *)a3 completionHandler:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  v7 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self);
  v4 = swift_allocObject();
  v4[2] = a3;
  v4[3] = v7;
  v4[4] = self;
  sub_240D80444(&unk_240DB29D8, v4);
}

- (void)fetchCatalogMetadataWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  MEMORY[0x277D82BE0](self);
  v3 = swift_allocObject();
  *(v3 + 16) = v4;
  *(v3 + 24) = self;
  sub_240D80444(&unk_240DB2A10, v3);
}

- (void)runBootstrapCatalogSyncWithBootstrapCatalogSyncConfig:(NSDictionary *)a3 completionHandler:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  v7 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self);
  v4 = swift_allocObject();
  v4[2] = a3;
  v4[3] = v7;
  v4[4] = self;
  sub_240D80444(&unk_240DB2A28, v4);
}

- (BOOL)persistFitnessDataWithFitnessTablesData:(id)a3 error:(id *)a4
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  v8 = sub_240DADC84();
  sub_240D912B0(v8);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
  return 1;
}

@end