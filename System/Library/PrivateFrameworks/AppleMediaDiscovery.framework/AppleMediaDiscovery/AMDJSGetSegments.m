@interface AMDJSGetSegments
+ (id)getAppSegments:(id)a3 error:(id *)a4;
@end

@implementation AMDJSGetSegments

+ (id)getAppSegments:(id)a3 error:(id *)a4
{
  v26[3] = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = a4;
  v15 = [AMDWorkflow getCurrentWorkflowForDomain:[AMDDomains getCodeForDomain:@"apps"] andTreatmentId:0 andUseCaseId:0x2852AAC08 error:a4];
  if (*a4)
  {
    v18 = 0;
    v14 = 1;
  }

  else if (v15)
  {
    v13 = [v15 first];
    v12 = [AMDAppSegment getSegmentsInfoForTreatment:v13 error:v16];
    if (*v16)
    {
      v18 = 0;
      v14 = 1;
    }

    else
    {
      v11 = [v12 first];
      v10 = [v12 second];
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
      [AMDFrameworkMetrics log:"log:withKey:atVerbosity:" withKey:? atVerbosity:?];
      MEMORY[0x277D82BD8](v6);
      v23[0] = @"segmentDataType";
      v24[0] = &unk_2852BA638;
      v23[1] = @"segmentData";
      v24[1] = v11;
      v23[2] = @"metadata";
      v21 = @"metrics";
      v19[0] = @"algoId";
      v20[0] = v10;
      v19[1] = @"treatmentId";
      v20[1] = v13;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
      v22 = v8;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v24[2] = v7;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
      v14 = 1;
      objc_storeStrong(&v10, 0);
      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
  }

  else
  {
    v25[0] = @"segmentDataType";
    v26[0] = &unk_2852BA638;
    v25[1] = @"segmentData";
    v26[1] = MEMORY[0x277CBEC10];
    v25[2] = @"metadata";
    v26[2] = &unk_2852BB4C0;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
    v14 = 1;
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  v4 = v18;

  return v4;
}

@end