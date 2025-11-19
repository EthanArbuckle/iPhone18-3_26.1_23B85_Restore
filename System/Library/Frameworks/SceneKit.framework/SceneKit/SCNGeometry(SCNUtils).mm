@interface SCNGeometry(SCNUtils)
@end

@implementation SCNGeometry(SCNUtils)

- (void)_geometryByWeldingVerticesWithThreshold:()SCNUtils normalThreshold:.cold.1(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "indexRedirection[index] <= index";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. bad redirection index after sort", a1);
}

- (void)_geometryByWeldingVerticesWithThreshold:()SCNUtils normalThreshold:.cold.2(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "index>0";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. weld - bad index", a1);
}

- (void)_geometryByWeldingVerticesWithThreshold:()SCNUtils normalThreshold:.cold.3(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "indexRedirection[index] <= index";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. weld - bad redirection", a1);
}

- (void)_geometryByWeldingVerticesWithThreshold:()SCNUtils normalThreshold:.cold.4(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "indexes[index] < count - weldCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. weld - redirection out of bounds", a1);
}

- (void)_geometryByWeldingVerticesWithThreshold:()SCNUtils normalThreshold:.cold.5(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "offset == weldCount";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. weld - bad duplicated vertex count", &v1, 0xCu);
}

- (void)_geometryByWeldingVerticesWithThreshold:()SCNUtils normalThreshold:.cold.6(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "((uint32_t*)elementDataWrt)[index] < count - weldCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. weld: bad index", a1);
}

- (void)_geometryByWeldingVerticesWithThreshold:()SCNUtils normalThreshold:.cold.7(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "((uint16_t*)elementDataWrt)[index] < count - weldCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. weld: bad index", a1);
}

- (void)_geometryByWeldingVerticesWithThreshold:()SCNUtils normalThreshold:.cold.8(uint8_t *a1, void *a2, NSObject *a3)
{
  *a1 = 136315138;
  *a2 = "elementDataWrt[index] < count - weldCount";
  OUTLINED_FUNCTION_1(&dword_21BEF7000, a2, a3, "Assertion '%s' failed. weld: bad index", a1);
}

@end