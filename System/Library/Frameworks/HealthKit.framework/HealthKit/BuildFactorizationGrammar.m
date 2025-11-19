@interface BuildFactorizationGrammar
@end

@implementation BuildFactorizationGrammar

id ___BuildFactorizationGrammar_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 objectAtIndexedSubscript:0];
  v3 = [v2 evaluate];

  return v3;
}

id ___BuildFactorizationGrammar_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 objectAtIndexedSubscript:0];
  v3 = [v2 evaluate];

  v4 = [_HKFactorization factorizationWithFactor:v3 exponent:1];

  return v4;
}

id ___BuildFactorizationGrammar_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 evaluate];
  v5 = [v2 objectAtIndexedSubscript:2];

  v6 = [v5 evaluate];
  v7 = [v4 factorizationByDividing:v6];

  return v7;
}

id ___BuildFactorizationGrammar_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectAtIndexedSubscript:1];
  v3 = [v2 evaluate];

  return v3;
}

id ___BuildFactorizationGrammar_block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 evaluate];

  v5 = [v2 objectAtIndexedSubscript:2];

  v6 = [v5 evaluate];

  v7 = +[_HKFactorization factorizationWithFactor:exponent:](_HKFactorization, "factorizationWithFactor:exponent:", v4, [v6 integerValue]);

  return v7;
}

id ___BuildFactorizationGrammar_block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectAtIndexedSubscript:4];
  v4 = [v3 evaluate];

  v5 = [v2 objectAtIndexedSubscript:1];

  v6 = [v5 evaluate];
  v7 = [v6 factorizationByRaisingToExponent:{objc_msgSend(v4, "integerValue")}];

  return v7;
}

id ___BuildFactorizationGrammar_block_invoke_9(uint64_t a1, void *a2)
{
  v2 = [a2 objectAtIndexedSubscript:1];
  v3 = [v2 evaluate];

  return v3;
}

id ___BuildFactorizationGrammar_block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 evaluate];
  v5 = [v2 objectAtIndexedSubscript:2];

  v6 = [v5 evaluate];
  v7 = [v4 factorizationByMultiplying:v6];

  return v7;
}

@end