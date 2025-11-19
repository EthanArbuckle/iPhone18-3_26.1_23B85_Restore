@interface _CHSWidgetMetricsCodable
- (_CHSWidgetMetricsCodable)initWithCoder:(id)a3;
- (_CHSWidgetMetricsCodable)initWithSize:(CGSize)a3 cornerRadius:(double)a4 scaleFactor:(double)a5 fontStyle:(int64_t)a6 margins:(id)a7 supportsDynamicText:(unint64_t)a8 widgetGroupMargins:(id)a9 nestedContentMetrics:(id)a10;
@end

@implementation _CHSWidgetMetricsCodable

- (_CHSWidgetMetricsCodable)initWithSize:(CGSize)a3 cornerRadius:(double)a4 scaleFactor:(double)a5 fontStyle:(int64_t)a6 margins:(id)a7 supportsDynamicText:(unint64_t)a8 widgetGroupMargins:(id)a9 nestedContentMetrics:(id)a10
{
  v10 = a10;
  height = a3.height;
  width = a3.width;
  if (a10)
  {
    sub_19202A7A8(0, &qword_1EADEEEB8, 0x1E696AD98);
    sub_19202A7A8(0, &qword_1ED74BD10, 0x1E69943F0);
    sub_19205DDC0(&qword_1EADF1A90, &qword_1EADEEEB8, 0x1E696AD98);
    sub_192227840();
    v20 = a7;
    v21 = a9;
    v10 = sub_192227830();
  }

  else
  {
    v22 = a7;
    v23 = a9;
  }

  v26.receiver = self;
  v26.super_class = type metadata accessor for CHSWidgetMetricsCodable();
  v24 = [(CHSWidgetMetrics *)&v26 initWithSize:a6 cornerRadius:a7 scaleFactor:a8 fontStyle:a9 margins:v10 supportsDynamicText:width widgetGroupMargins:height nestedContentMetrics:a4, a5];

  return v24;
}

- (_CHSWidgetMetricsCodable)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CHSWidgetMetricsCodable();
  v4 = a3;
  v5 = [(CHSWidgetMetrics *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end