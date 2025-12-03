@interface _CHSWidgetMetricsCodable
- (_CHSWidgetMetricsCodable)initWithCoder:(id)coder;
- (_CHSWidgetMetricsCodable)initWithSize:(CGSize)size cornerRadius:(double)radius scaleFactor:(double)factor fontStyle:(int64_t)style margins:(id)margins supportsDynamicText:(unint64_t)text widgetGroupMargins:(id)groupMargins nestedContentMetrics:(id)self0;
@end

@implementation _CHSWidgetMetricsCodable

- (_CHSWidgetMetricsCodable)initWithSize:(CGSize)size cornerRadius:(double)radius scaleFactor:(double)factor fontStyle:(int64_t)style margins:(id)margins supportsDynamicText:(unint64_t)text widgetGroupMargins:(id)groupMargins nestedContentMetrics:(id)self0
{
  metricsCopy = metrics;
  height = size.height;
  width = size.width;
  if (metrics)
  {
    sub_19202A7A8(0, &qword_1EADEEEB8, 0x1E696AD98);
    sub_19202A7A8(0, &qword_1ED74BD10, 0x1E69943F0);
    sub_19205DDC0(&qword_1EADF1A90, &qword_1EADEEEB8, 0x1E696AD98);
    sub_192227840();
    marginsCopy = margins;
    groupMarginsCopy = groupMargins;
    metricsCopy = sub_192227830();
  }

  else
  {
    marginsCopy2 = margins;
    groupMarginsCopy2 = groupMargins;
  }

  v26.receiver = self;
  v26.super_class = type metadata accessor for CHSWidgetMetricsCodable();
  factor = [(CHSWidgetMetrics *)&v26 initWithSize:style cornerRadius:margins scaleFactor:text fontStyle:groupMargins margins:metricsCopy supportsDynamicText:width widgetGroupMargins:height nestedContentMetrics:radius, factor];

  return factor;
}

- (_CHSWidgetMetricsCodable)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CHSWidgetMetricsCodable();
  coderCopy = coder;
  v5 = [(CHSWidgetMetrics *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end