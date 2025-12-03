@interface SCNJSValueTmpImp
+ (id)valueWithTransform3D:(SCNMatrix4 *)d inContext:(id)context;
+ (id)valueWithVector3:(SCNVector3)vector3 inContext:(id)context;
+ (id)valueWithVector4:(SCNVector4)vector4 inContext:(id)context;
- (SCNMatrix4)toTransform3D;
- (SCNVector3)toVector3;
- (SCNVector4)toVector4;
@end

@implementation SCNJSValueTmpImp

- (SCNVector4)toVector4
{
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"x", "toDouble"}];
  v4 = v3;
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"y", "toDouble"}];
  v6 = v5;
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"z", "toDouble"}];
  v8 = v7;
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"w", "toDouble"}];
  v10 = v9;
  v11 = v4;
  v12 = v6;
  v13 = v8;
  result.w = v10;
  result.z = v13;
  result.y = v12;
  result.x = v11;
  return result;
}

+ (id)valueWithVector4:(SCNVector4)vector4 inContext:(id)context
{
  w = vector4.w;
  z = vector4.z;
  y = vector4.y;
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = @"x";
  v14[0] = [MEMORY[0x277CCABB0] numberWithFloat:*&vector4.x];
  v13[1] = @"y";
  *&v9 = y;
  v14[1] = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v13[2] = @"z";
  *&v10 = z;
  v14[2] = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v13[3] = @"w";
  *&v11 = w;
  v14[3] = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  return [self valueWithObject:objc_msgSend(MEMORY[0x277CBEAC0] inContext:{"dictionaryWithObjects:forKeys:count:", v14, v13, 4), context}];
}

- (SCNVector3)toVector3
{
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"x", "toDouble"}];
  v4 = v3;
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"y", "toDouble"}];
  v6 = v5;
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"z", "toDouble"}];
  v8 = v7;
  v9 = v4;
  v10 = v6;
  result.z = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

+ (id)valueWithVector3:(SCNVector3)vector3 inContext:(id)context
{
  z = vector3.z;
  y = vector3.y;
  v12[3] = *MEMORY[0x277D85DE8];
  v11[0] = @"x";
  v12[0] = [MEMORY[0x277CCABB0] numberWithFloat:*&vector3.x];
  v11[1] = @"y";
  *&v8 = y;
  v12[1] = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v11[2] = @"z";
  *&v9 = z;
  v12[2] = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  return [self valueWithObject:objc_msgSend(MEMORY[0x277CBEAC0] inContext:{"dictionaryWithObjects:forKeys:count:", v12, v11, 3), context}];
}

- (SCNMatrix4)toTransform3D
{
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"m11", "toDouble"}];
  *&v5 = v5;
  retstr->m11 = *&v5;
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"m12", "toDouble"}];
  *&v6 = v6;
  retstr->m12 = *&v6;
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"m13", "toDouble"}];
  *&v7 = v7;
  retstr->m13 = *&v7;
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"m14", "toDouble"}];
  *&v8 = v8;
  retstr->m14 = *&v8;
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"m21", "toDouble"}];
  *&v9 = v9;
  retstr->m21 = *&v9;
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"m22", "toDouble"}];
  *&v10 = v10;
  retstr->m22 = *&v10;
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"m23", "toDouble"}];
  *&v11 = v11;
  retstr->m23 = *&v11;
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"m24", "toDouble"}];
  *&v12 = v12;
  retstr->m24 = *&v12;
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"m31", "toDouble"}];
  *&v13 = v13;
  retstr->m31 = *&v13;
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"m32", "toDouble"}];
  *&v14 = v14;
  retstr->m32 = *&v14;
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"m33", "toDouble"}];
  *&v15 = v15;
  retstr->m33 = *&v15;
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"m34", "toDouble"}];
  *&v16 = v16;
  retstr->m34 = *&v16;
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"m41", "toDouble"}];
  *&v17 = v17;
  retstr->m41 = *&v17;
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"m42", "toDouble"}];
  *&v18 = v18;
  retstr->m42 = *&v18;
  [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"m43", "toDouble"}];
  *&v19 = v19;
  retstr->m43 = *&v19;
  result = [-[SCNJSValueTmpImp objectForKeyedSubscript:](self objectForKeyedSubscript:{@"m44", "toDouble"}];
  *&v21 = v21;
  retstr->m44 = *&v21;
  return result;
}

+ (id)valueWithTransform3D:(SCNMatrix4 *)d inContext:(id)context
{
  v25[16] = *MEMORY[0x277D85DE8];
  v24[0] = @"m11";
  *&v4 = d->m11;
  v25[0] = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v24[1] = @"m12";
  *&v8 = d->m12;
  v25[1] = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v24[2] = @"m13";
  *&v9 = d->m13;
  v25[2] = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v24[3] = @"m14";
  *&v10 = d->m14;
  v25[3] = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v24[4] = @"m21";
  *&v11 = d->m21;
  v25[4] = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v24[5] = @"m22";
  *&v12 = d->m22;
  v25[5] = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v24[6] = @"m23";
  *&v13 = d->m23;
  v25[6] = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v24[7] = @"m24";
  *&v14 = d->m24;
  v25[7] = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v24[8] = @"m31";
  *&v15 = d->m31;
  v25[8] = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  v24[9] = @"m32";
  *&v16 = d->m32;
  v25[9] = [MEMORY[0x277CCABB0] numberWithFloat:v16];
  v24[10] = @"m33";
  *&v17 = d->m33;
  v25[10] = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  v24[11] = @"m34";
  *&v18 = d->m34;
  v25[11] = [MEMORY[0x277CCABB0] numberWithFloat:v18];
  v24[12] = @"m41";
  *&v19 = d->m41;
  v25[12] = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v24[13] = @"m42";
  *&v20 = d->m42;
  v25[13] = [MEMORY[0x277CCABB0] numberWithFloat:v20];
  v24[14] = @"m43";
  *&v21 = d->m43;
  v25[14] = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v24[15] = @"m44";
  *&v22 = d->m44;
  v25[15] = [MEMORY[0x277CCABB0] numberWithFloat:v22];
  return [self valueWithObject:objc_msgSend(MEMORY[0x277CBEAC0] inContext:{"dictionaryWithObjects:forKeys:count:", v25, v24, 16), context}];
}

@end