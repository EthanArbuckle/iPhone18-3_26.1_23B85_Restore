@interface MTRClusterTestCluster
- (void)simpleStructEchoRequestWithParams:(MTRTestClusterClusterSimpleStructEchoRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)testAddArgumentsWithParams:(MTRTestClusterClusterTestAddArgumentsParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)testComplexNullableOptionalRequestWithParams:(MTRTestClusterClusterTestComplexNullableOptionalRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)testEmitTestEventRequestWithParams:(MTRTestClusterClusterTestEmitTestEventRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)testEmitTestFabricScopedEventRequestWithParams:(MTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)testEnumsRequestWithParams:(MTRTestClusterClusterTestEnumsRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)testListInt8UArgumentRequestWithParams:(MTRTestClusterClusterTestListInt8UArgumentRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)testListInt8UReverseRequestWithParams:(MTRTestClusterClusterTestListInt8UReverseRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)testListNestedStructListArgumentRequestWithParams:(MTRTestClusterClusterTestListNestedStructListArgumentRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)testListStructArgumentRequestWithParams:(MTRTestClusterClusterTestListStructArgumentRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)testNestedStructArgumentRequestWithParams:(MTRTestClusterClusterTestNestedStructArgumentRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)testNestedStructListArgumentRequestWithParams:(MTRTestClusterClusterTestNestedStructListArgumentRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)testNullableOptionalRequestWithParams:(MTRTestClusterClusterTestNullableOptionalRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)testSimpleArgumentRequestWithParams:(MTRTestClusterClusterTestSimpleArgumentRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)testSpecificWithParams:(MTRTestClusterClusterTestSpecificParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)testStructArgumentRequestWithParams:(MTRTestClusterClusterTestStructArgumentRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
- (void)testStructArrayArgumentRequestWithParams:(MTRTestClusterClusterTestStructArrayArgumentRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler;
@end

@implementation MTRClusterTestCluster

- (void)testSpecificWithParams:(MTRTestClusterClusterTestSpecificParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_239384434;
  v12[3] = &unk_278A73898;
  v13 = v10;
  v11 = v10;
  [(MTRClusterUnitTesting *)self testSpecificWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)testAddArgumentsWithParams:(MTRTestClusterClusterTestAddArgumentsParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_239384544;
  v12[3] = &unk_278A738C0;
  v13 = v10;
  v11 = v10;
  [(MTRClusterUnitTesting *)self testAddArgumentsWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)testSimpleArgumentRequestWithParams:(MTRTestClusterClusterTestSimpleArgumentRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_239384628;
  v12[3] = &unk_278A738E8;
  v13 = v10;
  v11 = v10;
  [(MTRClusterUnitTesting *)self testSimpleArgumentRequestWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)testStructArrayArgumentRequestWithParams:(MTRTestClusterClusterTestStructArrayArgumentRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_23938470C;
  v12[3] = &unk_278A73910;
  v13 = v10;
  v11 = v10;
  [(MTRClusterUnitTesting *)self testStructArrayArgumentRequestWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)testStructArgumentRequestWithParams:(MTRTestClusterClusterTestStructArgumentRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2393847F0;
  v12[3] = &unk_278A73938;
  v13 = v10;
  v11 = v10;
  [(MTRClusterUnitTesting *)self testStructArgumentRequestWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)testNestedStructArgumentRequestWithParams:(MTRTestClusterClusterTestNestedStructArgumentRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2393848D4;
  v12[3] = &unk_278A73938;
  v13 = v10;
  v11 = v10;
  [(MTRClusterUnitTesting *)self testNestedStructArgumentRequestWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)testListStructArgumentRequestWithParams:(MTRTestClusterClusterTestListStructArgumentRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2393849B8;
  v12[3] = &unk_278A73938;
  v13 = v10;
  v11 = v10;
  [(MTRClusterUnitTesting *)self testListStructArgumentRequestWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)testListInt8UArgumentRequestWithParams:(MTRTestClusterClusterTestListInt8UArgumentRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_239384A9C;
  v12[3] = &unk_278A73938;
  v13 = v10;
  v11 = v10;
  [(MTRClusterUnitTesting *)self testListInt8UArgumentRequestWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)testNestedStructListArgumentRequestWithParams:(MTRTestClusterClusterTestNestedStructListArgumentRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_239384B80;
  v12[3] = &unk_278A73938;
  v13 = v10;
  v11 = v10;
  [(MTRClusterUnitTesting *)self testNestedStructListArgumentRequestWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)testListNestedStructListArgumentRequestWithParams:(MTRTestClusterClusterTestListNestedStructListArgumentRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_239384C64;
  v12[3] = &unk_278A73938;
  v13 = v10;
  v11 = v10;
  [(MTRClusterUnitTesting *)self testListNestedStructListArgumentRequestWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)testListInt8UReverseRequestWithParams:(MTRTestClusterClusterTestListInt8UReverseRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_239384D48;
  v12[3] = &unk_278A73960;
  v13 = v10;
  v11 = v10;
  [(MTRClusterUnitTesting *)self testListInt8UReverseRequestWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)testEnumsRequestWithParams:(MTRTestClusterClusterTestEnumsRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_239384E2C;
  v12[3] = &unk_278A73988;
  v13 = v10;
  v11 = v10;
  [(MTRClusterUnitTesting *)self testEnumsRequestWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)testNullableOptionalRequestWithParams:(MTRTestClusterClusterTestNullableOptionalRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_239384F10;
  v12[3] = &unk_278A739B0;
  v13 = v10;
  v11 = v10;
  [(MTRClusterUnitTesting *)self testNullableOptionalRequestWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)testComplexNullableOptionalRequestWithParams:(MTRTestClusterClusterTestComplexNullableOptionalRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_239385008;
  v12[3] = &unk_278A739D8;
  v13 = v10;
  v11 = v10;
  [(MTRClusterUnitTesting *)self testComplexNullableOptionalRequestWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)simpleStructEchoRequestWithParams:(MTRTestClusterClusterSimpleStructEchoRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2393850EC;
  v12[3] = &unk_278A73A00;
  v13 = v10;
  v11 = v10;
  [(MTRClusterUnitTesting *)self simpleStructEchoRequestWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)testEmitTestEventRequestWithParams:(MTRTestClusterClusterTestEmitTestEventRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_239385200;
  v12[3] = &unk_278A73A28;
  v13 = v10;
  v11 = v10;
  [(MTRClusterUnitTesting *)self testEmitTestEventRequestWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

- (void)testEmitTestFabricScopedEventRequestWithParams:(MTRTestClusterClusterTestEmitTestFabricScopedEventRequestParams *)params expectedValues:(NSArray *)expectedDataValueDictionaries expectedValueInterval:(NSNumber *)expectedValueIntervalMs completionHandler:(void *)completionHandler
{
  v10 = completionHandler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2393852E4;
  v12[3] = &unk_278A73A50;
  v13 = v10;
  v11 = v10;
  [(MTRClusterUnitTesting *)self testEmitTestFabricScopedEventRequestWithParams:params expectedValues:expectedDataValueDictionaries expectedValueInterval:expectedValueIntervalMs completion:v12];
}

@end