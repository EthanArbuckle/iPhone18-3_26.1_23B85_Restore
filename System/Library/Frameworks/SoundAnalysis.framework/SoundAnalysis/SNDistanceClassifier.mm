@interface SNDistanceClassifier
+ (id)createRequestWithError:(id *)a3;
+ (id)modelURLForCurrentProduct;
+ (id)modelURLForProductType:(int)a3 acousticID:(id)a4 withFileExistenceCheck:(BOOL)a5;
@end

@implementation SNDistanceClassifier

+ (id)modelURLForCurrentProduct
{
  v2 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  swift_getObjCClassMetadata();
  sub_1C9A06F40(v4);
  v5 = sub_1C9A91558();
  v6 = 0;
  if (sub_1C97ABF20(v4, 1, v5) != 1)
  {
    v6 = sub_1C9A91488();
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return v6;
}

+ (id)modelURLForProductType:(int)a3 acousticID:(id)a4 withFileExistenceCheck:(BOOL)a5
{
  v5 = a5;
  v7 = *&a3;
  v8 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  if (a4)
  {
    v11 = sub_1C9A924A8();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  sub_1C9A06FA0(v7, v11, a4, v5, v10);

  v13 = sub_1C9A91558();
  v14 = 0;
  if (sub_1C97ABF20(v10, 1, v13) != 1)
  {
    v14 = sub_1C9A91488();
    (*(*(v13 - 8) + 8))(v10, v13);
  }

  return v14;
}

+ (id)createRequestWithError:(id *)a3
{
  v3 = sub_1C9A07A68();

  return v3;
}

@end